local M = {}

M.base_30 = {
   white = "#d6deeb",
   darker_black = "#001122",
   black = "#011627",
   black2 = "#061b2c",
   one_bg = "#0b2031", -- real bg of onedark
   one_bg2 = "#152a3b",
   one_bg3 = "#1f3445",
   grey = "#293e4f",
   grey_fg = "#314657",
   grey_fg2 = "#394e5f",
   light_grey = "#8b9f9f",
   red = "#f78c6c",
   baby_pink = "#ff6cca",
   pink = "#fa58b6",
   line = "#091e2f",
   green = "#addb67",
   vibrant_green = "#22da6e",
   blue = "#82aaff",
   nord_blue = "#78a0f5",
   yellow = "#ffcb8b",
   sun = "#ffe9a9",
   purple = "#c792ea",
   dark_purple = "#a974cc",
   teal = "#96CEB4",
   orange = "#FFAD60",
   cyan = "#93FFD8",
   statusline_bg = "#051a2b",
   lightbg = "#112637",
   lightbg2 = "#0b2031",
   pmenu_bg = "#addb67",
   folder_bg = "#82aaff",
}

M.base_16 = {
   base00 = "#011627", -- bg
   base01 = "#0c2132", -- lightbg
   base02 = "#172c3d", -- selection bg
   base03 = "#223748", -- comments, line highlighting
   base04 = "#2c4152", -- dark foreground
   base05 = "#aeb6c3", -- Default Foreground, Caret, Delimiters, Operators
   base06 = "#d6deeb", -- Light Foreground (Not often used)
   base07 = "#feffff", -- Light Background (Not often used)
   base08 = "#7fdbca", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
   base09 = "#f78c6c", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
   base0A = "#c792ea", -- Classes, Markup Bold, Search Text Background
   base0B = "#ecc48d", -- Strings, Inherited Class, Markup Code, Diff Inserted
   base0C = "#91b9ff", -- Support, Regular Expressions, Escape Characters, Markup Quotes
   base0D = "#82aaff", -- Functions, Methods, Attribute IDs, Headings
   base0E = "#c792ea", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
   base0F = "#d6deeb", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
}

M = require("base46").override_theme(M, "nightowl")

return M
