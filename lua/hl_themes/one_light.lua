local M = {}

M.base_30 = {
   white = "#54555b",
   darker_black = "#f5f5f5",
   black = "#fafafa", --  nvim bg
   black2 = "#f1f1f1",
   one_bg = "#f0f0f0", -- real bg of onedark
   one_bg2 = "#ececec",
   one_bg3 = "#e7e7e7",
   grey = "#cbcbcb",
   grey_fg = "#c6c6c6",
   grey_fg2 = "#b7b7b7",
   light_grey = "#b7b7b7",
   red = "#e6676e",
   baby_pink = "#F07178",
   pink = "#ff75a0",
   line = "#e9e9e9", -- for lines like vertsplit
   green = "#7b90c7",
   vibrant_green = "#7eca9c",
   nord_blue = "#5e5f65",
   blue = "#28a2f4",
   yellow = "#7e7e7e",
   sun = "#dea95f",
   purple = "#a28dcd",
   dark_purple = "#8e79b9",
   teal = "#519ABA",
   orange = "#FF6A00",
   cyan = "#a3b8ef",
   statusline_bg = "#f0f0f0",
   lightbg = "#d6d6d6",
   lightbg2 = "#5e5f65",
   pmenu_bg = "#5e5f65",
   folder_bg = "#6C6C6C",
}

M.base_16 = {
   base00 = "#fafafa",
   base01 = "#f0f0f1",
   base02 = "#e5e5e6",
   base03 = "#a0a1a7",
   base04 = "#696c77",
   base05 = "#383a42",
   base06 = "#202227",
   base07 = "#090a0b",
   base08 = "#ca1243",
   base09 = "#d75f00",
   base0A = "#c18401",
   base0B = "#50a14f",
   base0C = "#0184bc",
   base0D = "#4078f2",
   base0E = "#a626a4",
   base0F = "#986801",
}

M = require("base16").override_theme(M, "one_light")

return M
