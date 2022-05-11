local M = {}

M.base_30 = {
   white = "#ab5236",
   darker_black = "#000000",
   black = "#101010", --  nvim bg
   black2 = "#161616",
   one_bg = "#1a1a1a",
   one_bg2 = "#232323",
   one_bg3 = "#2b2b2b",
   grey = "#ff5236",
   grey_fg = "#008751",
   grey_fg2 = "#4c4c4c",
   light_grey = "#545454",
   red = "#ff004d",
   baby_pink = "#ff86b7",
   pink = "#ff77a8",
   line = "#7e2553", -- for lines like vertsplit
   green = "#008751",
   vibrant_green = "#00e756",
   blue = "#1d2b73",
   nord_blue = "#101e46",
   yellow = "#fff024",
   sun = "#fff82c",
   purple = "#FF2553",
   dark_purple = "#711846",
   teal = "#AEDCB7",
   orange = "#ffa300",
   cyan = "#29adff",
   statusline_bg = "#0c0c0c",
   lightbg = "#191919",
   lightbg2 = "#131313",
   pmenu_bg = "#ffccaa",
   folder_bg = "#3b4991",
}

M.base_16 = {
    base00 = '#030303',
    base01 = '#3b4971',
    base02 = '#420017',
    base03 = '#008751',
    base04 = '#ab5236',
    base05 = '#8c847c',
    base06 = '#c2c3c7',
    base07 = '#fff1e8',
    base08 = '#ffb20f',
    base09 = '#ff004d',
    base0A = '#be620a',
    base0B = '#00e756',
    base0C = '#29adff',
    base0D = '#af35b9',
    base0E = '#ff4394',
    base0F = '#ffccaa'
}

M = require("base46").override_theme(M, "gatekeeper")

return M
