local M = {}

M.base_30 = {
  white = "#dadada",
  darker_black = "#131a1c",
  black = "#181f21", -- nvim bg
  black2 = "#1d2426",
  one_bg = "#22292b",
  one_bg2 = "#293032",
  one_bg3 = "#32393b",
  grey = "#3c4345",
  grey_fg = "#464d4f",
  grey_fg2 = "#4f5658",
  light_grey = "#575e60",
  red = "#e06e6e",
  baby_pink = "#ef7d7d",
  pink = "#ee9cdd",
  line = "#22292b", -- for lines like vertsplit
  green = "#8ccf7e",
  vibrant_green = "#9bdead",
  nord_blue = "#6da4cd",
  blue = "#77aed7",
  yellow = "#d8b25b",
  sun = "#e0ba63",
  purple = "#c47fd5",
  dark_purple = "#b570c6",
  teal = "#8ad8ef",
  orange = "#e19d5c",
  cyan = "#6da4cd",
  statusline_bg = "#1c2325",
  lightbg = "#2a3133",
  lightbg2 = "#232a2c",
  pmenu_bg = "#8ccf7e",
  folder_bg = "#6da4cd",
}

M.base_16 = {
  base00 = "#181f21",
  base01 = "#22292b",
  base02 = "#363d3f",
  base03 = "#404749",
  base04 = "#4f5658",
  base05 = "#cacaca",
  base06 = "#d2d2d2",
  base07 = "#dadada",
  base08 = "#e06e6e",
  base09 = "#e19d5c",
  base0A = "#e0ba63",
  base0B = "#8ccf7e",
  base0C = "#95ccf5",
  base0D = "#77aed7",
  base0E = "#c47fd5",
  base0F = "#ef7d7d",
}

M.type = "dark"

M = require("base46").override_theme(M, "everblush")

return M
