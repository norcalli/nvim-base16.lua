
local M = {}

M.base_30 = {
  white = "#24292e",
  darker_black = "#f6f8fa",
  black = "#ffffff", --  nvim bg
  -- black2 = "#f6f8fa",
  black2 = "#d4d8de",
  one_bg = "#e1e4e8",
  one_bg2 = "#d4d8de", -- StatusBar (filename)
  one_bg3 = "#c5cbd3",
  grey = "#babbbd", -- Line numbers (shouldn't be base01?)
  grey_fg = "#6a737d", -- Why this affects comments?
  grey_fg2 = "#99a4b2",
  light_grey = "#8b97a7",
  red = "#cb2431", -- StatusBar (username)
  baby_pink = "#fae5e7",
  pink = "#dd3c49",
  line = "#babbbd", -- for lines like vertsplit
  green = "#28a745", -- StatusBar (file percentage)
  vibrant_green = "#d4f8db",
  nord_blue = "#044289", -- Mode indicator
  blue = "#005cc5",
  yellow = "#b08800",
  sun = "#dbab09",
  purple = "#6f42c1",
  dark_purple = "#5a32a3",
  teal = "#3192aa",
  orange = "#e36209",
  cyan = "#0598bc",
  statusline_bg = "#e1e4e8",
  lightbg = "#d4d8de",
  pmenu_bg = "#032f62",
  folder_bg = "#6a737d",
}

M.base_16 = {
  base00 = "#ffffff", -- Default bg
  base01 = "#f6f8fa", -- Lighter bg (status bar, line number, folding mks)
  base02 = "#dbe9f9", -- Selection bg
  base03 = "#6a737d", -- Comments, invisibles, line hl
  base04 = "#666666", -- Dark fg (status bars)
  base05 = "#24292e", -- Default fg (caret, delimiters, Operators)
  base06 = "#24292e", -- Light fg (not often used)
  base07 = "#ffffff", -- Light bg (not often used)
  base08 = "#e36209", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
  -- Change "Variables" with "parameters"
  base09 = "#005cc5", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
  base0A = "#b31d28", -- Classes, Markup Bold, Search Text Background
  base0B = "#032f62", -- Strings, Inherited Class, Markup Code, Diff Inserted
  -- "%p" should be recognized as 
  base0C = "#005cc5", -- Support, regex, escape chars
  base0D = "#6f42c1", -- Function, methods, headings
  -- #include should not be parsed as a heading if .c
  base0E = "#d73a49", -- Keywords
  base0F = "#24292e", -- Deprecated, open/close embedded tags
}

vim.opt.bg = "light"

M.polish_hl = {
  TelescopePromptPrefix = { fg = M.base_30.white },
  TelescopeSelection = { bg = M.base_30.one_bg, fg = M.base_30.white },
  FloatBorder = { fg = M.base_16.base05 },
  DiffAdd = { fg = M.base_16.base05 },
  TbLineThemeToggleBtn = { bg = M.base_30.one_bg3 },
  WhichKeyDesc = { fg = M.base_30.white },
  Pmenu = { bg = M.base_30.black2 },
  St_pos_text = { fg = M.base_30.white },
  TSVariableBuiltin = { fg = M.base_30.red },
  TSProperty = { fg = M.base_30.teal },
}

M = require("base46").override_theme(M, "github_light")

return M
