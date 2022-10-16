local M = {}

M.base_30 = {
  white = "#f2f4f8",
  darker_black = "#131313",
  black = "#1E1D2D", --  nvim bg
  black2 = "#393939",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#363545",
  one_bg3 = "#3e3d4d",
  grey = "#474656",
  grey_fg = "#4e4d5d",
  grey_fg2 = "#525252",
  light_grey = "#605f6f",
  red = "#ee5396",
  baby_pink = "#ff7eb6",
  pink = "#be95ff",
  line = "#383747", -- for lines like vertsplit
  green = "#42be65",
  vibrant_green = "#08bdba",
  nord_blue = "#78a9ff",
  blue = "#33b1ff",
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#3ddbd9",
  statusline_bg = "#393939",
  lightbg = "#262626",
  pmenu_bg = "#3ddbd9",
  folder_bg = "#78a9ff",
  lavender = "#c7d1ff",
}

M.base_16 = {
  base00 = "#161616",
  base01 = "#262626",
  base02 = "#393939",
  base03 = "#525252",
  base04 = "#dde1e6",
  base05 = "#f2f4f8",
  base06 = "#ffffff",
  base07 = "#08bdba",
  base08 = "#3ddbd9",
  base09 = "#78a9ff",
  base0A = "#ee5396",
  base0B = "#33b1ff",
  base0C = "#ff7eb6",
  base0D = "#42be65",
  base0E = "#be95ff",
  base0F = "#82cfff",
}

M.polish_hl = {
  Function = {
    fg = M.base_16.base0C,
    bold = true,
  },
  String = {
    fg = M.base_16.base0E,
  },
  TSVariable = { fg = M.base_30.lavender },
  TSProperty = { fg = M.base_30.teal },
  TSVariableBuiltin = { fg = M.base_30.red },
  Operator = { fg = M.base_30.dark_purple },
  TSAttribute = { fg = M.base_30.purple },
}

vim.opt.bg = "dark"

M = require("base46").override_theme(M, "oxocarbon")

return M
