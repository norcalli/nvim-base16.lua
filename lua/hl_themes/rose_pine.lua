local M = {}

M.base_30 = {
   black = "#191724", --  nvim bg
   darker_black = "#13111e",
   white = "#e0def4",
   black2 = "#1f1d2a",
   one_bg = "#23212e", -- real bg of onedark
   one_bg2 = "#2c2a37",
   one_bg3 = "#34323f",
   grey = "#3d3b48",
   grey_fg = "#474552",
   grey_fg2 = "#514f5c",
   light_grey = "#595764",
   red = "#eb6f92",
   baby_pink = "#f5799c",
   pink = "#ff83a6",
   line = "#292734", -- for lines like vertsplit
   green = "#ABE9B3",
   vibrant_green = "#b5f3bd",
   nord_blue = "#89DCEB",
   blue = "#96CDFB",
   yellow = "#f6c177",
   sun = "#fec97f",
   purple = "#C9CBFF",
   dark_purple = "#bfc1f5",
   teal = "#B5E8E0",
   orange = "#ffd88e",
   cyan = "#9df0ff",
   statusline_bg = "#1d1b28",
   lightbg = "#2a2835",
   lightbg2 = "#24222f",
   pmenu_bg = "#9ccfd8",
   folder_bg = "#61afef",
}

M.base_16 = {
   base00 = "#191724",
   base01 = "#1f1d2e",
   base02 = "#403d52",
   base03 = "#6e6a86",
   base04 = "#908caa",
   base05 = "#e0def4",
   base06 = "#cecacd",
   base07 = "#fffaf3",
   base08 = "#eb6f92",
   base09 = "#ebbcba",
   base0A = "#9ccfd8",
   base0B = "#f6c177",
   base0C = "#c4a7e7",
   base0D = "#ea9a97",
   base0E = "#31748f",
   base0F = "#ebbcba",
}

M = require("base46").override_theme(M, "rose_pine")

return M
