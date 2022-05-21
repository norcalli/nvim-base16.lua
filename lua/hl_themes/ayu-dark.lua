local M = {}

M.base_30 = {
   white = "#ced4df",
   darker_black = "#090e13",
   black = "#0F1419", --  nvim bg
   black2 = "#151a1f",
   one_bg = "#1f2429",
   one_bg2 = "#282d32",
   one_bg3 = "#30353a",
   grey = "#33383d",
   grey_fg = "#23282d",
   grey_fg2 = "#2d3237",
   light_grey = "#353a3f",
   red = "#F07178",
   baby_pink = "#FFB5C3",
   pink = "#f9afbd",
   line = "#151A1E", -- for lines like vertsplit
   green = "#B8CC52",
   vibrant_green = "#c2d65c",
   blue = "#36A3D9",
   nord_blue = "#43b0e6",
   yellow = "#E7C547",
   sun = "#efcd4f",
   purple = "#D2A6FF",
   dark_purple = "#A37ACC",
   teal = "#95E6CB",
   orange = "#FF8F40",
   cyan = "#a9fadf",
   statusline_bg = "#13181d",
   lightbg = "20252a",
   lightbg2 = "#1a1f24",
   pmenu_bg = "#E6E1CF",
   folder_bg = "#39BAE6",
}

M.base_16 = {
   base00 = "#171a1f",
   base01 = "#2D3640",
   base02 = "#253340",
   base03 = "#5C6773",
   base04 = "#383d43",
   base05 = "#E6E1CF",
   base06 = "#D9D7CE",
   base07 = "#212733",
   base08 = "#F07178",
   base09 = "#FFEE99",
   base0A = "#565B66",
   base0B = "#B8CC52",
   base0C = "#5b98a9",
   base0D = "#dcf076",
   base0E = "#FF7733",
   base0F = "#E6B673",
}

M = require("base46").override_theme(M, "ayu-dark")

return M
