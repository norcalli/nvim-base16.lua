local M = {}

M.base_30 = {
   white = "#dee1e6",
   darker_black = "#13171b",
   black = "#171B20", --  nvim bg
   black2 = "#1a1e24",
   one_bg = "#21262e",
   one_bg2 = "#242931",
   one_bg3 = "#242931",
   grey = "#485263",
   grey_fg = "#525c6d",
   grey_fg2 = "#5c6677",
   light_grey = "#667081",
   red = "#e05f65",
   baby_pink = "#ea696f",
   pink = "#c68aee",
   line = "#242931", -- for lines like vertsplit
   green = "#78DBA9",
   vibrant_green = "#87eab8",
   blue = "#70a5eb",
   nord_blue = "#74bee9",
   yellow = "#f1cf8a",
   sun = "#e7c580",
   purple = "#c68aee",
   dark_purple = "#b77bdf",
   teal = "#7ddac5",
   orange = "#e9a180",
   cyan = "#74bee9",
   statusline_bg = "#1a1e24",
   lightbg = "#21262e",
   lightbg2 = "#21262e",
   pmenu_bg = "#7ddac5",
   folder_bg = "#78DBA9",
}

M.base_16 = {
   base00 = "#171B20",
   base01 = "#21262e",
   base02 = "#242931",
   base03 = "#485263",
   base04 = "#485263",
   base05 = "#b6beca",
   base06 = "#dee1e6",
   base07 = "#21262e",
   base08 = "#70a5eb",
   base09 = "#f1cf8a",
   base0A = "#e05f65",
   base0B = "#f1cf8a",
   base0C = "#74bee9",
   base0D = "#70aceb",
   base0E = "#e05f65",
   base0F = "#b6beca",
}

M = require("base46").override_theme(M, "decay")

return M
