local M = {}

M.base_30 = {
  white = "#ebdbb2",
  darker_black = "#222222",
  black = "#282828", --  nvim bg
  black2 = "#2e2e2e",
  one_bg = "#323232",
  one_bg2 = "#3b3b3b",
  one_bg3 = "#434343",
  grey = "#505050",
  grey_fg = "#5a5a5a",
  grey_fg2 = "#646464",
  light_grey = "#6c6c6c",
  red = "#ea6962",
  baby_pink = "#ce8196",
  pink = "#ff75a0",
  line = "#373737", -- for lines like vertsplit
  green = "#89b482",
  vibrant_green = "#a9b665",
  nord_blue = "#6f8faf",
  blue = "#6d8dad",
  yellow = "#d8a657",
  sun = "#eab869",
  purple = "#d3869b",
  dark_purple = "#d3869b",
  teal = "#749689",
  orange = "#e78a4e",
  cyan = "#89b482",
  statusline_bg = "#2c2c2c",
  lightbg = "#393939",
  pmenu_bg = "#89b482",
  folder_bg = "#6d8dad",
}

M.base_16 = {
  base0A = "#e0c080",
  base04 = "#d4be98",
  base07 = "#c7b89d",
  base05 = "#c0b196",
  base0E = "#d3869b",
  base0D = "#7daea3",
  base0C = "#86b17f",
  base0B = "#a9b665",
  base02 = "#323232",
  base0F = "#d65d0e",
  base03 = "#434343",
  base08 = "#ec6b64",
  base01 = "#2e2e2e",
  base00 = "#282828",
  base09 = "#e78a4e",
  base06 = "#c3b499",
}

vim.opt.bg = "dark"

M = require("base46").override_theme(M, "gruvbox_material")

return M
