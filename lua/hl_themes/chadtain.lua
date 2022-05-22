local M = {}

M.base_30 = {
   white = "#b0b0b0",
   darker_black = "#171d23",
   black = "#1a2026", --  nvim bg
   black2 = "#20262c",
   one_bg = "#242a30",
   one_bg2 = "#292f35",
   one_bg3 = "#2e343a",
   grey = "#42484e",
   grey_fg = "#474d53",
   grey_fg2 = "#50565c",
   light_grey = "#565c62",
   red = "#ac8a8c",
   baby_pink = "#de878f",
   pink = "#e89199",
   line = "#2d3339", -- for lines like vertsplit
   green = "#8aac8b",
   vibrant_green = "#9ec49f",
   blue = "#6b8bab",
   nord_blue = "#7797b7",
   yellow = "#c4c19e",
   sun = "#aca98a",
   purple = "#a39ec4",
   dark_purple = "#8f8aac",
   teal = "#7c9cbc",
   orange = "#e39a83",
   cyan = "#9aafe6",
   statusline_bg = "#1e242a",
   lightbg = "#2d3339",
   lightbg2 = "#252b31",
   pmenu_bg = "#8aac8b",
   folder_bg = "#6b8bab",
}

M.base_16 = {
   base00 = "#1a2026",
   base01 = "#242a30",
   base02 = "#292f35",
   base03 = "#2e343a",
   base04 = "#42484e",
   base05 = "#d3d3d3",
   base06 = "#d8d8d8",
   base07 = "#b0b0b0",
   base08 = "#c49ea0",
   base09 = "#b89294",
   base0A = "#ccc9aa",
   base0B = "#8aac8b",
   base0C = "#8aabac",
   base0D = "#6b8bab",
   base0E = "#8f8aac",
   base0F = "#8b6567",
}

M.type = "dark"

M = require("base46").override_theme(M, "chadtain")

return M
