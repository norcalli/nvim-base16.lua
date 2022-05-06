local M = {}

M.base_30 = {
   white = "#685c56",
   darker_black = "#e5dedb",
   black = "#ede6e3", --  nvim bg
   black2 = "#e0d9d6",
   one_bg = "#e2dbd8",
   one_bg2 = "#d1cac7",
   one_bg3 = "#cac3c0",
   grey = "#bab3b0",
   grey_fg = "#aea7a4",
   grey_fg2 = "#a29b98",
   light_grey = "#958e8b",
   red = "#c99780",
   baby_pink = "#ce9c85",
   pink = "#ce9c85",
   line = "#d9d2cf", -- for lines like vertsplit
   green = "#839773",
   vibrant_green = "#899d79",
   blue = "#6c8aa8",
   nord_blue = "#5e5f65",
   yellow = "#a9a29f",
   sun = "#eaa18a",
   purple = "#a685a6",
   dark_purple = "#9c7b9c",
   teal = "#62809e",
   orange = "#e39a83",
   cyan = "#75998e",
   statusline_bg = "#e4ddda",
   lightbg = "#cac3c0",
   lightbg2 = "#dbd4d1",
   pmenu_bg = "#857e7b",
   folder_bg = "#817a77",
}

M.base_16 = {
   base00 = "#ede6e3",
   base01 = "#dad3d0",
   base02 = "#b6b0a6",
   base03 = "#938d8a",
   base04 = "#afabaa",
   base05 = "#6c605a",
   base06 = "#938680",
   base07 = "#ede6e3",
   base08 = "#978e81",
   base09 = "#9c7b9c",
   base0A = "#b6b0a6",
   base0B = "#c99385",
   base0C = "#ce9c85",
   base0D = "#a09c80",
   base0E = "#A3BE8C",
   base0F = "#887c76",
}

M = require("base46").override_theme(M, "blossom")

return M
