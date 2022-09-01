--
local M = {}

M.base_30 = {
  white = "#c9d1d9",
  darker_black = "#010409",
  black = "#0d1117", --  nvim bg
  black2 = "#2d3139",
  one_bg = "#20262c",
  one_bg2 = "#30363d", -- StatusBar (filename)
  one_bg3 = "#c5cbd3",
  grey = "#6e7681", -- Line numbers (shouldn't be base01?)
  grey_fg = "#8b949e", -- Why this affects comments?
  grey_fg2 = "#99a4b2",
  light_grey = "#8b97a7",
  red = "#ff7b72", -- StatusBar (username)
  baby_pink = "#ffb8b3",
  pink = "#d2a8ff",
  line = "#30363d", -- for lines like vertsplit
  green = "#3fb950", -- StatusBar (file percentage)
  vibrant_green = "#56d364",
  nord_blue = "#58a6ff", -- Mode indicator
  blue = "#79c0ff",
  yellow = "#e3b341", --"#d29922",
  sun = "#d29922", --"#e3b341",
  purple = "#8965cd",
  dark_purple = "#5a32a3",
  teal = "#39c5cf",
  orange = "#ffa657",
  cyan = "#56d4dd",
  statusline_bg = "#0d1117",
  lightbg = "#30363d",
  pmenu_bg = "#c5cbd3", -- Command bar suggestions
  folder_bg = "#8b949e",
}

M.base_16 = {
  base00 = "#0d1117", -- Default bg
  base01 = "#010409", -- Lighter bg (status bar, line number, folding mks)
  base02 = "#193047", -- Selection bg
  base03 = "#8b949e", -- Comments, invisibles, line hl
  base04 = "#666666", -- Dark fg (status bars)
  base05 = "#c9d1d9", -- Default fg (caret, delimiters, Operators)
  base06 = "#c9d1d9", -- Light fg (not often used)
  base07 = "#0d1117", -- Light bg (not often used)
  base08 = "#ffa657", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
-- Change "Variables" with "parameters"
  base09 = "#4cb0ff", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
  base0A = "#ff7b72", -- Classes, Markup Bold, Search Text Background
  base0B = "#a5d6ff", -- Strings, Inherited Class, Markup Code, Diff Inserted
  -- "%p" should be recognized as 
  base0C = "#79c0ff", -- Support, regex, escape chars
  base0D = "#b9a6ff", -- Function, methods, headings
  -- #include should not be parsed as a heading if .c
  base0E = "#ff7b72", -- Keywords
  base0F = "#c9d1d9", -- Deprecated, open/close embedded tags
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
