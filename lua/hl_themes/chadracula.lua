local M = {}

M.base_30 = {
   white = "#F8F8F2",
   darker_black = "#232531",
   black = "#282A36", --  nvim bg
   black2 = "#303341",
   one_bg = "#373844", -- real bg of onedark
   one_bg2 = "#44475a",
   one_bg3 = "#565761",
   grey = "#5e5f69",
   grey_fg = "#666771",
   grey_fg2 = "#6e6f79",
   light_grey = "#73747e",
   red = "#E95678",
   baby_pink = "#DE8C92",
   pink = "#FF79C6",
   line = "#373844", -- for lines like vertsplit
   green = "#69ff94",
   vibrant_green = "#69FF94",
   nord_blue = "#b389ef",
   blue = "#BD93F9",
   yellow = "#F1FA8C",
   sun = "#FFFFA5",
   purple = "#BD93F9",
   dark_purple = "#BD93F9",
   teal = "#0088cc",
   orange = "#FFB86C",
   cyan = "#8BE9FD",
   statusline_bg = "#2b2d39",
   lightbg = "#343642",
   lightbg2 = "#2f313d",
   pmenu_bg = "#b389ef",
   folder_bg = "#BD93F9",
}

M.base_16 = {
   base00 = "#282a36",
   base01 = "#3a3c4e",
   base02 = "#44475a",
   base03 = "#6272a4",
   base04 = "#62d6e8",
   base05 = "#e9e9f4",
   base06 = "#6272a4",
   base07 = "#ff95ef",
   base08 = "#ffb86c",
   base09 = "#bd93f9",
   base0A = "#8be9fd",
   base0B = "#ffffa5",
   base0C = "#8be9fd",
   base0D = "#69ff94",
   base0E = "#ff92df",
   base0F = "#f7f7fb",
}

M = require("base16").override_theme(M, "chadracula")

return M
