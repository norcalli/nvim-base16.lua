local colors = require("base46").get_theme_tb "base_30"
local theme = require("base46").get_theme_tb "base_16"

return {
  MatchWord = {
    bg = colors.grey,
    fg = colors.white,
  },

  Pmenu = { bg = colors.one_bg },
  PmenuSbar = { bg = colors.one_bg },
  PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
  PmenuThumb = { bg = colors.grey },

  MatchParen = { link = "MatchWord" },

  Comment = { fg = colors.grey_fg },

  CursorLineNr = { fg = colors.white },
  LineNr = { fg = colors.grey },

  -- floating windows
  FloatBorder = { fg = colors.blue },
  NormalFloat = { bg = colors.darker_black },

  NvimInternalError = { fg = colors.red },
  WinSeparator = { fg = colors.line },

  -- packer
  PackerPackageName = { fg = colors.red },
  PackerSuccess = { fg = colors.green },
  PackerStatusSuccess = { fg = theme.base08 },
  PackerStatusCommit = { fg = colors.blue },
  PackeProgress = { fg = colors.blue },
  PackerOutput = { fg = colors.red },
  PackerStatus = { fg = colors.blue },
  PackerHash = { fg = colors.blue },

  Normal = {
    fg = theme.base05,
    bg = theme.base00,
  },

  Bold = {
    bold = true,
  },

  Debug = {
    fg = theme.base08,
  },

  Directory = {
    fg = theme.base0D,
  },

  Error = {
    fg = theme.base00,
    bg = theme.base08,
  },

  ErrorMsg = {
    fg = theme.base08,
    bg = theme.base00,
  },

  Exception = {
    fg = theme.base08,
  },

  FoldColumn = {
    fg = theme.base0C,
    bg = theme.base01,
  },

  Folded = {
    fg = theme.base03,
    bg = theme.base01,
  },

  IncSearch = {
    fg = theme.base01,
    bg = theme.base09,
  },

  Italic = {
    italic = true,
  },

  Macro = {
    fg = theme.base08,
  },

  ModeMsg = {
    fg = theme.base0B,
  },

  MoreMsg = {
    fg = theme.base0B,
  },

  Question = {
    fg = theme.base0D,
  },

  Search = {
    fg = theme.base01,
    bg = theme.base0A,
  },

  Substitute = {
    fg = theme.base01,
    bg = theme.base0A,
    sp = "none",
  },

  SpecialKey = {
    fg = theme.base03,
  },

  TooLong = {
    fg = theme.base08,
  },

  UnderLined = {
    fg = theme.base0B,
  },

  Visual = {
    bg = theme.base02,
  },

  VisualNOS = {
    fg = theme.base08,
  },

  WarningMsg = {
    fg = theme.base08,
  },

  WildMenu = {
    fg = theme.base08,
    bg = theme.base0A,
  },

  Title = {
    fg = theme.base0D,
    sp = "none",
  },

  Conceal = {
    bg = "NONE",
  },

  Cursor = {
    fg = theme.base00,
    bg = theme.base05,
  },

  NonText = {
    fg = theme.base03,
  },

  SignColumn = {
    fg = theme.base03,
    sp = "NONE",
  },

  ColorColumn = {
    bg = theme.base01,
    sp = "none",
  },

  CursorColumn = {
    bg = theme.base01,
    sp = "none",
  },

  CursorLine = {
    bg = "none",
    sp = "none",
  },

  QuickFixLine = {
    bg = theme.base01,
    sp = "none",
  },

  -- spell
  SpellBad = {
    undercurl = true,
    sp = theme.base08,
  },

  SpellLocal = {
    undercurl = true,
    sp = theme.base0C,
  },

  SpellCap = {
    undercurl = true,
    sp = theme.base0D,
  },

  SpellRare = {
    undercurl = true,
    sp = theme.base0E,
  },

  healthSuccess = {
    bg = colors.green,
    fg = colors.black,
  },


  ------------------------------------- Statusline ----------------------------------------------

  StatusLine = {
    bg = colors.statusline_bg,
  },

  St_gitIcons = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
    bold = true,
  },

  -- LSP

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

  -- MODES

  St_NormalMode = {
    bg = colors.nord_blue,
    fg = colors.black,
    bold = true,
  },

  St_InsertMode = {
    bg = colors.dark_purple,
    fg = colors.black,

    bold = true,
  },

  St_TerminalMode = {
    bg = colors.green,
    fg = colors.black,
    bold = true,
  },

  St_NTerminalMode = {
    bg = colors.yellow,
    fg = colors.black,
    bold = true,
  },

  St_VisualMode = {
    bg = colors.cyan,
    fg = colors.black,
    bold = true,
  },

  St_ReplaceMode = {
    bg = colors.orange,
    fg = colors.black,

    bold = true,
  },

  St_ConfirmMode = {
    bg = colors.teal,
    fg = colors.black,

    bold = true,
  },

  St_CommandMode = {
    bg = colors.green,
    fg = colors.black,

    bold = true,
  },

  St_SelectMode = {
    bg = colors.nord_blue,
    fg = colors.black,

    bold = true,
  },

  -- Separators for mode
  St_NormalModeSep = {
    fg = colors.nord_blue,
    bg = colors.grey,
  },

  St_InsertModeSep = {
    fg = colors.dark_purple,
    bg = colors.grey,
  },

  St_TerminalModeSep = {
    fg = colors.green,
    bg = colors.grey,
  },

  St_NTerminalModeSep = {
    fg = colors.yellow,
    bg = colors.grey,
  },

  St_VisualModeSep = {
    fg = colors.cyan,
    bg = colors.grey,
  },

  St_ReplaceModeSep = {
    fg = colors.orange,
    bg = colors.grey,
  },

  St_ConfirmModeSep = {
    fg = colors.teal,
    bg = colors.grey,
  },

  St_CommandModeSep = {
    fg = colors.green,
    bg = colors.grey,
  },

  St_SelectModeSep = {
    fg = colors.nord_blue,
    bg = colors.grey,
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
