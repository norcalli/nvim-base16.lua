local M = {}

M.base_30 = {
   white = "#F8F9FA",
   darker_black = "#1B1F23",
   black = "#212529", --  nvim bg
   black2 = "#343A40",
   one_bg = "#2b2f33", -- real bg of onedark
   one_bg2 = "#34383c",
   one_bg3 = "#3c4044",
   grey = "#ADB5BD",
   grey_fg = "#6C757D",
   grey_fg2 = "#495057",
   light_grey = "#CED4DA",
   red = "#FF8E8E",
   baby_pink = "#FFEDDE",
   pink = "#FFDEDE",
   line = "#343A40", -- for lines like vertsplit
   green = "#E4FFDE",
   vibrant_green = "#DFFFDE",
   nord_blue = "#DEF2FF",
   blue = "#DEFBFF",
   yellow = "#FFFBDE",
   sun = "#FFFDDE",
   purple = "#EFDEFF",
   dark_purple = "#EFDEFF",
   teal = "#DEFFE5",
   orange = "#FFE2C2",
   cyan = "#DEFBFF",
   statusline_bg = "#343A40",
   lightbg = "#495057",
   pmenu_bg = "#DEFBFF",
   folder_bg = "#FFDEDE",
}

M.base_16 = {
   base00 = "#212529",
   base01 = "#343A40",
   base02 = "#495057",
   base03 = "#6C757D",
   base04 = "#ADB5BD",
   base05 = "#CED4DA",
   base06 = "#DEE2E6",
   base07 = "#E9ECEF",
   base08 = "#FF8E8E",
   base09 = "#FFE2C2",
   base0A = "#FFFBDE",
   base0B = "#E4FFDE",
   base0C = "#DEFFE5",
   base0D = "#DEFBFF",
   base0E = "#EFDEFF",
   base0F = "#FC868C",
}

M.type = "dark"

M = require("base46").override_theme(M, "sweetpastel")

return M
