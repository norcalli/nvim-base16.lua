local M = {}

M.base_30 = {
   white = "#c6c6c6",
   darker_black = "#030303",
   black = "#080808",
   black2 = "#131313",
   one_bg = "#1c1c1c",
   one_bg2 = "#222222",
   one_bg3 = "#292929",
   grey = "#4d4d4d",
   grey_fg = "#575757",
   grey_fg2 = "#616161",
   light_grey = "#6b6b6b",
   red = "#ff2026",
   baby_pink = "#DB5C00",
   pink = "#e5786d",
   line = "#333333",
   green = "#87d75f",
   vibrant_green = "#66ea5a",
   nord_blue = "#779fef",
   blue = "#87afff",
   yellow = "#d7ff87",
   sun = "#fbe44c",
   purple = "#d787ff",
   dark_purple = "#73186e",
   teal = "#2a0d6a",
   orange = "#d7875f",
   cyan = "#66c4ff",
   statusline_bg = "#313131",
   lightbg = "#3e3e3e",
   lightbg2 = "#363636",
   pmenu_bg = "#87d75f",
   folder_bg = "#87afff",
}

M.base_16 = {
   base00 = "#080808",
   base01 = "#1c1c1c",
   base02 = "#292929",
   base03 = "#87875f",
   base04 = "#857b6f",
   base05 = "#c6c6c6",
   base06 = "#d2d2d2",
   base07 = "#dedede",
   base08 = "#c6c6c6",
   base09 = "#d7875f",
   base0A = "#d7ff87",
   base0B = "#87d75f",
   base0C = "#ffd7af",
   base0D = "#d7ff87",
   base0E = "#87afff",
   base0F = "#dc8c64",
}

M = require("base16").override_theme(M, "wombat")

return M
