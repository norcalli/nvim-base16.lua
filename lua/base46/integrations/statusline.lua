local colors = require("base46").get_theme_tb "base_30"
local generate_color = require("base46.colors").change_hex_lightness
local merge_tb = vim.tbl_deep_extend

-- change color values according to statusilne themes
local statusline_theme = require("core.utils").load_config().ui.statusline.theme

if statusline_theme == "vscode" then
  colors.statusline_bg = generate_color(colors.statusline_bg, 1)
  colors.light_grey = generate_color(colors.light_grey, 20)
elseif statusline_theme == "vscode_colored" then
  colors.statusline_bg = generate_color(colors.statusline_bg, 1)
  colors.light_grey = generate_color(colors.light_grey, 25)
end

local Lsp_highlights = {
  St_lspError = {
    fg = colors.red,
    bg = colors.statusline_bg,
  },

  St_lspWarning = {
    fg = colors.yellow,
    bg = colors.statusline_bg,
  },

  St_LspHints = {
    fg = colors.purple,
    bg = colors.statusline_bg,
  },

  St_LspInfo = {
    fg = colors.green,
    bg = colors.statusline_bg,
  },
}

local M = {}

M.default = {
  StatusLine = {
    bg = colors.statusline_bg,
  },

  St_gitIcons = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
    bold = true,
  },

  St_LspStatus = {
    fg = colors.nord_blue,
    bg = colors.statusline_bg,
  },

  St_LspProgress = {
    fg = colors.green,
    bg = colors.statusline_bg,
  },

  St_LspStatus_Icon = {
    fg = colors.black,
    bg = colors.nord_blue,
  },

  St_EmptySpace = {
    fg = colors.grey,
    bg = colors.lightbg,
  },

  St_EmptySpace2 = {
    fg = colors.grey,
    bg = colors.statusline_bg,
  },

  St_file_info = {
    bg = colors.lightbg,
    fg = colors.white,
  },

  St_file_sep = {
    bg = colors.statusline_bg,
    fg = colors.lightbg,
  },

  St_cwd_icon = {
    fg = colors.one_bg,
    bg = colors.red,
  },

  St_cwd_text = {
    fg = colors.white,
    bg = colors.lightbg,
  },

  St_cwd_sep = {
    fg = colors.red,
    bg = colors.statusline_bg,
  },

  St_pos_sep = {
    fg = colors.green,
    bg = colors.lightbg,
  },

  St_pos_icon = {
    fg = colors.black,
    bg = colors.green,
  },

  St_pos_text = {
    fg = colors.green,
    bg = colors.lightbg,
  },
}

M.vscode = {
  StatusLine = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
  },

  St_Mode = {
    fg = colors.light_grey,
    bg = colors.one_bg3,
  },

  StText = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
  },
}

M.vscode_colored = {
  StatusLine = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
  },

  StText = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
  },

  -- LSP
  St_lspError = {
    fg = colors.red,
    bg = colors.statusline_bg,
    bold = true,
  },

  St_lspWarning = {
    fg = colors.yellow,
    bg = colors.statusline_bg,
    bold = true,
  },

  St_LspHints = {
    fg = colors.purple,
    bg = colors.statusline_bg,
    bold = true,
  },

  St_LspInfo = {
    fg = colors.green,
    bg = colors.statusline_bg,
    bold = true,
  },

  St_LspStatus = {
    fg = colors.green,
    bg = colors.statusline_bg,
  },

  St_LspProgress = {
    fg = colors.red,
    bg = colors.statusline_bg,
  },

  St_cwd = {
    fg = colors.red,
    bg = colors.one_bg3,
  },

  St_encode = {
    fg = colors.orange,
    bg = colors.statusline_bg,
  },

  St_ft = {
    fg = colors.blue,
    bg = colors.statusline_bg,
  },
}

M.minimal = {
  StatusLine = {
    bg = colors.black,
  },

  St_gitIcons = {
    fg = generate_color(colors.light_grey, 8),
    bg = colors.black,
    bold = true,
  },

  -- LSP
  St_lspError = {
    fg = colors.red,
    bg = colors.black,
  },

  St_lspWarning = {
    fg = colors.yellow,
    bg = colors.black,
  },

  St_LspHints = {
    fg = colors.purple,
    bg = colors.black,
  },

  St_LspInfo = {
    fg = colors.green,
    bg = colors.black,
  },

  St_LspProgress = {
    fg = colors.green,
    bg = colors.black,
  },

  St_LspStatus_Icon = {
    fg = colors.black,
    bg = colors.nord_blue,
  },

  St_EmptySpace = {
    fg = colors.black,
    bg = colors.black,
  },

  St_EmptySpace2 = {
    fg = colors.black,
  },

  St_file_info = {
    bg = colors.black,
    fg = colors.white,
  },

  St_file_sep = {
    bg = colors.black,
    fg = colors.black,
  },

  St_sep_r = {
    bg = colors.black,
    fg = colors.one_bg,
  },
}

-- add common lsp highlights
M.default = merge_tb("force", M.default, Lsp_highlights)
M.vscode_colored = merge_tb("force", M.vscode_colored, Lsp_highlights)

local function genModes_hl(modename, col)
  M.default["St_" .. modename .. "Mode"] = { fg = colors.black, bg = colors[col], bold = true }
  M.default["St_" .. modename .. "ModeSep"] = { fg = colors[col], bg = colors.grey }

  M.vscode_colored["St_" .. modename .. "Mode"] = { fg = colors[col], bg = colors.one_bg3, bold = true }

  M.minimal["St_" .. modename .. "Mode"] = { fg = colors.black, bg = colors[col], bold = true }
  M.minimal["St_" .. modename .. "ModeSep"] = { fg = colors[col], bg = colors.black, bold = true }
  M.minimal["St_" .. modename .. "modeText"] = { fg = colors[col], bg = colors.one_bg, bold = true }
end

-- add mode highlights
if statusline_theme == "default" then
  genModes_hl("Normal", "nord_blue")
else
  genModes_hl("Normal", "blue")
end

genModes_hl("Visual", "cyan")
genModes_hl("Insert", "dark_purple")
genModes_hl("Terminal", "green")
genModes_hl("NTerminal", "yellow")
genModes_hl("Replace", "orange")
genModes_hl("Confirm", "teal")
genModes_hl("Command", "green")
genModes_hl("Select", "blue")

-- add block highlights for minimal theme
local function gen_hl(name, col)
  M.minimal["St_" .. name .. "_bg"] = {
    fg = colors.black,
    bg = colors[col],
  }

  M.minimal["St_" .. name .. "_txt"] = {
    fg = colors[col],
    bg = colors.one_bg,
  }

  M.minimal["St_" .. name .. "_sep"] = {
    fg = colors[col],
    bg = colors.black,
  }
end

gen_hl("file", "red")
gen_hl("Pos", "yellow")
gen_hl("cwd", "orange")
gen_hl("lsp", "green")

return M[statusline_theme]
