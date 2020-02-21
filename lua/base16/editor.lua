local vim = vim
local api = vim.api
local bit = require'bit'
local tohex = bit.tohex

local base16 = require'base16'

local M = {}

local function ok_or_nil(status, ...)
  if not status then return end
  return ...
end
local function npcall(fn, ...)
  return ok_or_nil(pcall(fn, ...))
end

local function err_message(...)
  api.nvim_err_writeln(table.concat(vim.tbl_flatten{...}))
  api.nvim_command("redraw")
end
local function ok_or_log(status, ...)
  if not status then
    err_message(...)
    return
  end
  return ...
end
local function pcall_log(fn, ...)
  return ok_or_log(pcall(fn, ...))
end

local function extend(t, o)
	for k, v in pairs(o) do
		t[k] = v
	end
	return t
end

local function hexnum(rgb)
  if not rgb then return end
  return "#"..tohex(rgb, 6)
end

local ns = api.nvim_create_namespace('kiani-palette')

local function transform_lines(fn)
  local ignore = false
  return function(_, bufnr, changedtick, firstline, lastline, new_lastline, old_byte_size, old_utf32_size, old_utf16_size)
    if ignore then
      ignore = false
      return
    end
    -- if last_changed.firstline == firstline
    --   and last_changed.new_lastline == new_lastline
    --   and last_changed.changedtick == changedtick - 1 then
    --   return
    -- end
    -- lines, bufnr, changedtick, firstline, lastline, new_lastline, old_byte_size, old_utf32_size, old_utf16_size
    local function lines()
      return api.nvim_buf_get_lines(bufnr, firstline, new_lastline, true)
    end
    local newlines = fn(lines, bufnr, changedtick, firstline, lastline, new_lastline, old_byte_size, old_utf32_size, old_utf16_size)
    if newlines then
      ignore = true
      vim.schedule(function()
        api.nvim_buf_set_lines(bufnr, firstline, new_lastline, newlines)
      end)
    end
  end
end

local function hiname_to_attrs(hiname)
    -- TODO(ashkan): error instead?
  local gui_attributes = npcall(vim.api.nvim_get_hl_by_name, hiname, true) or {}
  local cterm_attributes = npcall(vim.api.nvim_get_hl_by_name, hiname, false) or {}

  local attributes = {}
  attributes.ctermfg = cterm_attributes.foreground
  attributes.ctermbg = cterm_attributes.background
  attributes.guifg = hexnum(gui_attributes.foreground)
  attributes.guibg = hexnum(gui_attributes.background)
  attributes.cterm = {}
  attributes.gui = {}

  for k in pairs(cterm_attributes) do
    if type(k) == 'string' and k ~= 'foreground' and k ~= 'background' then
      table.insert(attributes.cterm, k)
    end
  end
  for k in pairs(gui_attributes) do
    if type(k) == 'string' and k ~= 'foreground' and k ~= 'background' then
      table.insert(attributes.gui, k)
    end
  end

  if #attributes.gui == 0 then
    attributes.gui = nil
  else
    attributes.gui = table.concat(attributes.gui, ',')
  end
  if #attributes.cterm == 0 then
    attributes.cterm = nil
  else
    attributes.cterm = table.concat(attributes.cterm, ',')
  end
  return attributes
end

local COMPONENTS = {
  "ctermfg";
  "ctermbg";
  "guifg";
  "guibg";
  "cterm";
  "gui";
}

local function attrs_to_cmd(attributes)
  local parts = {}
  for _, k in ipairs(COMPONENTS) do
    local v = attributes[k]
    if v == -1 then
      v = "none"
    end
    if v then
      parts[#parts+1] = k.."="..v
    end
  end
  return table.concat(parts, ' ')
end

local function open_highlight_editor(highlights)
  local max_width = 0
  for i, hiname in ipairs(highlights) do
    max_width = math.max(#hiname, max_width)
  end
  do
    local lines = {}
    for i, hiname in ipairs(highlights) do
      local attributes = hiname_to_attrs(hiname)
      local formatted = attrs_to_cmd(attributes)

      lines[i] = hiname..(" "):rep(max_width - #hiname + 1).." "..formatted
      -- lines[i] = hiname.." "..formatted
    end
    api.nvim_buf_set_lines(0, 0, -1, false, lines)
    for i, hiname in ipairs(highlights) do
      api.nvim_buf_add_highlight(0, ns, hiname, i-1, 0, #hiname)
    end
  end
  vim.bo.undolevels = vim.o.undolevels

  local on_lines = transform_lines(function(get_lines, bufnr, _, firstline)
    for i, line in ipairs(get_lines()) do
      local hiname = line:match("^(%S+)")
      if pcall(vim.cmd, "hi "..line) then
        api.nvim_buf_add_highlight(bufnr, ns, hiname, firstline + i-1, 0, #hiname)
      end
    end
  end)
  api.nvim_buf_attach(0, false, {
    on_lines = on_lines;
  })
end

local function nop() return true end

function M.open(initial)

  -- local filter = nop
  -- local bufnr
  -- do
  --   local afile = vim.fn.expand("<afile>")
  --   local pattern = afile:match("palette://(.*)")
  --   if pattern then
  --     filter = function(v)
  --       return v:match(pattern)
  --       -- return v:find(pattern, 1, true)
  --     end
  --     bufnr = api.nvim_get_current_buf()
  --   else
  --     vim.cmd "split"
  --     bufnr = api.nvim_create_buf(false, true)
  --     api.nvim_set_current_buf(bufnr)
  --   end
  -- end

  vim.cmd "split"
  local bufnr = api.nvim_create_buf(false, true)
  api.nvim_set_current_buf(bufnr)

  -- local bufnr = api.nvim_get_current_buf()

  local bo = vim.bo[bufnr]
  bo.undolevels = -1
  bo.bufhidden = 'wipe'

  initial = initial or base16.current_theme()
  if type(initial) == 'string' then
    initial = base16.themes[initial] or error("Invalid starting theme name: "..initial)
  end
  if type(initial) ~= 'table' then
    error("Specify a starting theme name or a starting palette (string or a table)")
  else
    if initial[1] then
      initial = base16.theme_from_array(initial)
    end
  end

  base16.apply_theme(initial)

  local FORMAT = "base%02X"
  local function base(n)
    return FORMAT:format(n)
  end

  do
    local lines = {}
    for i = 1, 16 do
      lines[i] = "#"..initial[base(i-1)]
    end
    api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)

    bo.undolevels = vim.o.undolevels
  end

  local function get()
    local lines = api.nvim_buf_get_lines(bufnr, 0, 16, false)
    if #lines < 16 then
      return
    end
    local theme = {}
    for i = 1, 16 do
      local hex = lines[i]:match("^#([a-fA-F0-9]+)")
      if not hex then
        return
      end
      theme[i] = hex
      theme[base(i-1)] = hex
    end
    return theme
  end

  api.nvim_buf_attach(bufnr, false, {
    on_lines = function()
      local theme = get()
      if theme then
        base16.apply_theme(theme)
      end
    end
  })

  function base16_editor_random()
    local lines = {}
    for i = 1, 16 do
      lines[i] = hexnum(math.random(1, 16777215))
    end
    api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
  end

  function base16_editor_save(name)
    local theme = get()
    if not theme then
      error("The current theme is invalid.")
    end
    local formatted_theme = {}
    for i = 1, 16 do
      formatted_theme[i] = ("base%02X = %q"):format(i - 1, theme[i])
    end
    formatted_theme = table.concat(formatted_theme, ';\n  ')
    local colors_dir = vim.fn.fnamemodify(vim.env.MYVIMRC, ":h:p").."/colors/"
    vim.fn.mkdir(colors_dir, "p")
    local filename = vim.fn.fnamemodify(vim.env.MYVIMRC, ":h:p").."/colors/"..name..".vim"
    local file = io.open(filename, "w")
    local inner = ([[
lua <<EOF
require'base16'.apply_theme {
  {theme}
}
EOF
let g:colors_name = {name}
]]):gsub("{(%w+)}", {
      theme = formatted_theme;
      name = string.format("%q", name);
    })
    file:write(inner)
    file:close()
    vim.cmd "split"
    print(("Saved %q"):format(filename))
    api.nvim_set_current_buf(vim.fn.bufadd(filename))
  end

  vim.cmd "command! -buffer Random lua base16_editor_random()"
  vim.cmd "command! -buffer -nargs=1 Save lua base16_editor_save(<f-args>)"

  -- for hi in vim.gsplit(vim.fn.execute("hi"), '\n', true) do
  --   if filter(hi) then
  --   -- if filter and hi:match(filter) then
  --     highlights[#highlights+1] = hi:match("^(%S+)")
  --   end
  -- end
  -- -- table.sort(highlights)
  -- open_highlight_editor(highlights)
end

-- vim.cmd "augroup KianiPalette"
-- vim.cmd "au!"
-- vim.cmd "autocmd BufReadCmd palette://* lua require'palette'.highlight_editor()"
-- vim.cmd "augroup end"

return M

