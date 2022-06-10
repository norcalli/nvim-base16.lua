local M = {}
local g = vim.g
local config = require("core.utils").load_config()

M.get_theme_tb = function(name, type)
   local default_path = "base46.themes." .. name
   local user_path = "custom.themes." .. name

   local present1, default_theme = pcall(require, default_path)
   local present2, user_theme = pcall(require, user_path)

   if present1 then
      return default_theme[type]
   elseif present2 then
      return user_theme[type]
   else
      error "No such theme bruh >_< "
   end
end

M.get_colors = function(type)
   local name = g.nvchad_theme
   return M.get_theme_tb(name, type)
end

M.merge_tb = function(table1, table2)
   return vim.tbl_deep_extend("force", table1, table2)
end

--  credits to https://github.com/max397574 for this function
M.clear_highlights = function(hl_group)
   local highlights_raw = vim.split(vim.api.nvim_exec("filter " .. hl_group .. " hi", true), "\n")
   local highlight_groups = {}

   for _, raw_hi in ipairs(highlights_raw) do
      table.insert(highlight_groups, string.match(raw_hi, hl_group .. "%a+"))
   end

   for _, highlight in ipairs(highlight_groups) do
      vim.cmd([[hi clear ]] .. highlight)
   end
end

M.load_theme = function()
   -- set bg option
   local theme_type = M.get_theme_tb(g.nvchad_theme, "type") -- dark/light
   vim.opt.bg = theme_type

   local reload = require("plenary.reload").reload_module
   local clear_hl = require("base46").clear_highlights

   clear_hl "BufferLine"
   clear_hl "TS"

   -- reload highlights for theme switcher
   reload "base46.integrations"
   reload "base46.chadlights"

   require "base46.term"
   require "base46.chadlights"
end

M.override_theme = function(default_theme, theme_name)
   local changed_themes = config.ui.changed_themes

   if changed_themes[theme_name] then
      return M.merge_tb(default_theme, changed_themes[theme_name])
   else
      return default_theme
   end
end

M.toggle_theme = function()
   local themes = config.ui.theme_toggle

   local theme1 = themes[1]
   local theme2 = themes[2]

   if g.nvchad_theme == theme1 or g.nvchad_theme == theme2 then
      if g.toggle_theme_icon == "   " then
         g.toggle_theme_icon = "   "
      else
         g.toggle_theme_icon = "   "
      end
   end

   if g.nvchad_theme == theme1 then
      g.nvchad_theme = theme2

      require("nvchad").reload_theme()
      require("nvchad").change_theme(theme1, theme2)
   elseif g.nvchad_theme == theme2 then
      g.nvchad_theme = theme1

      require("nvchad").reload_theme()
      require("nvchad").change_theme(theme2, theme1)
   else
      vim.notify "Set your current theme to one of those mentioned in the theme_toggle table (chadrc)"
   end
end

M.toggle_transparency = function()
   local transparency_status = require("core.utils").load_config().ui.transparency
   local write_data = require("nvchad").write_data

   local function save_chadrc_data()
      local old_data = "transparency = " .. tostring(transparency_status)
      local new_data = "transparency = " .. tostring(g.transparency)

      write_data(old_data, new_data)
   end

   if g.transparency then
      g.transparency = false

      M.load_theme()
      save_chadrc_data()
   else
      g.transparency = true

      M.load_theme()
      save_chadrc_data()
   end
end

return M
