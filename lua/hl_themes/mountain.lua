local M = {}

M.base_30 = {
   white = "#F0f0f0",
   darker_black = "#090909",
   black = "#0f0f0f", --  nvim bg
   black2 = "#151515",
   one_bg = "#191919",
   one_bg2 = "#222222",
   one_bg3 = "#2a2a2a",
   grey = "#373737",
   grey_fg = "#414141",
   grey_fg2 = "#4b4b4b",
   light_grey = "#535353",
   red = "#ac8a8c",
   baby_pink = "#bb999b",
   pink = "#e89199",
   line = "#191919", -- for lines like vertsplit
   green = "#8aac8b",
   vibrant_green = "#99bb9a",
   blue = "#A39EC4",
   nord_blue = "#b2add3",
   yellow = "#ACA98A",
   sun = "#d3d0ad",
   purple = "#C49EC4",
   dark_purple = "#b58fb5",
   teal = "#8fb4b5",
   orange = "#9d9a7b",
   cyan = "#9EC3C4",
   statusline_bg = "#131313",
   lightbg = "#292929",
   lightbg2 = "#232323",
   pmenu_bg = "#8aac8b",
   folder_bg = "#A39EC4",
}

M.base_16 = {
   base00 = "#0f0f0f",
   base01 = "#151515",
   base02 = "#191919",
   base03 = "#222222",
   base04 = "#535353",
   base05 = "#f0f0f0",
   base06 = "#d8d8d8",
   base07 = "#414141",
   base08 = "#ac8a8c",
   base09 = "#d3d0ad",
   base0A = "#ACA98A",
   base0B = "#8aac8b",
   base0C = "#9EC3C4",
   base0D = "#8fb4b5",
   base0E = "#C49EC4",
   base0F = "#9d9a7b",
}

M = require("base46").override_theme(M, "mountain")

return M
