local colors = require("base46").get_theme_tb "base_30"
local generate_color = require("base46.colors").change_hex_lightness

colors.statusline_bg = generate_color(colors.statusline_bg, 1)
colors.light_grey = generate_color(colors.light_grey, 25)

return {
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

  -- MODES

  St_NormalMode = {
    fg = colors.blue,
    bg = colors.one_bg3,
    bold = true,
  },

  St_InsertMode = {
    fg = colors.dark_purple,
    bg = colors.one_bg3,
    bold = true,
  },

  St_TerminalMode = {
    fg = colors.green,
    bg = colors.one_bg3,
    bold = true,
  },

  St_NTerminalMode = {
    fg = colors.yellow,
    bg = colors.one_bg3,
    bold = true,
  },

  St_VisualMode = {
    fg = colors.cyan,
    bg = colors.one_bg3,
    bold = true,
  },

  St_ReplaceMode = {
    fg = colors.orange,
    bg = colors.one_bg3,
    bold = true,
  },

  St_ConfirmMode = {
    fg = colors.teal,
    bg = colors.one_bg3,
    bold = true,
  },

  St_CommandMode = {
    fg = colors.green,
    bg = colors.one_bg3,
    bold = true,
  },

  St_SelectMode = {
    fg = colors.nord_blue,
    bg = colors.one_bg3,
    bold = true,
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
