local M = {}

M.base_30 = {
   white = "#d4d4d5",
   darker_black = "#11161b",
   black = "#101317", --  nvim bg
   black2 = "#171b20",
   one_bg = "#1a1f24",
   one_bg2 = "#2a2f34",
   one_bg3 = "#32373c",
   grey = "#262d33",
   grey_fg = "#333c44",
   grey_fg2 = "#3f4449",
   light_grey = "#585862",
   red = "#f87070",
   baby_pink = "#ff8e8e",
   pink = "#ffa7a7",
   line = "#292933", -- for lines like vertsplit
   green = "#36c692",
   vibrant_green = "#79dcaa",
   blue = "#7ab0df",
   nord_blue = "#87bdec",
   yellow = "#ffe59e",
   sun = "#ffeda6",
   purple = "#c397d8",
   dark_purple = "#b77ee0",
   teal = "#54ced6",
   orange = "#E8CCA7",
   cyan = "#70c0ba",
   statusline_bg = "#171b20",
   lightbg = "#282d32",
   lightbg2 = "#22272c",
   pmenu_bg = "#3bdda2",
   folder_bg = "#5fb0fc",
}

M.base_16 = {
   base00 = "#101317",
   base01 = "#171C21",
   base02 = "#1c2026",
   base03 = "#20252b",
   base04 = "#3d464e",
   base05 = "#ced4df",
   base06 = "#333c44",
   base07 = "#3a434b",
   base08 = "#56c69d",
   base09 = "#ffe59e",
   base0A = "#ffeda6",
   base0B = "#79dcaa",
   base0C = "#7ab0df",
   base0D = "#87bdec",
   base0E = "#f87070",
   base0F = "#f78888",
}

M = require("base16").override_theme(M, "radium")

return M
