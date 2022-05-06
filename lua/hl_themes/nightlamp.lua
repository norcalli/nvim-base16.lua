local M = {}

M.base_30 = {
   white = "#f1ebd1",
   darker_black = "#15161c",
   black = "#18191f", --nvim bg
   black2 = "#1e1f25",
   one_bg = "#222329",
   one_bg2 = "#28292f",
   one_bg3 = "#2e2f35",
   grey = "#38393f",
   grey_fg = "#43444a",
   grey_fg2 = "#48494f",
   light_grey = "#505157",
   red = "#a67476",
   baby_pink = "#d6b3bd",
   pink = "#c99aa7",
   line = "#24252b", --for lines like vertsplit
   green = "#8aa387",
   vibrant_green = "#94ad91",
   nord_blue = "#8d9bb3",
   blue = "#5a6986",
   yellow = "#ccb89c",
   sun = "#deb88a",
   purple = "#b8aad9",
   dark_purple = "#a99bca",
   teal = "#7aacaa",
   orange = "#c8916d",
   cyan = "#90a0a0",
   statusline_bg = "#1d1e24",
   lightbg = "#2b2c32",
   lightbg2 = "#24252b",
   pmenu_bg = "#8aa387",
   folder_bg = "#90a0a0",
}

M.base_16 = {
   base00 = "#18191f",
   base01 = "#222329",
   base02 = "#2c2d33",
   base03 = "#3c3d43",
   base04 = "#b5ac9b",
   base05 = "#cbc0ab",
   base06 = "#e0d6bd",
   base07 = "#f1ebd1",
   base08 = "#b8aad9",
   base09 = "#b17f81",
   base0A = "#d4ae80",
   base0B = "#8aa387",
   base0C = "#9ba292",
   base0D = "#c495a2",
   base0E = "#8896ae",
   base0F = "#d0d0c7",
}

M = require("base46").override_theme(M, "nightlamp")

return M
