local M = {}

M.base_30 = {
  white = "#ebdbb2",
  darker_black = "#222222",
  black = "#282828", --  nvim bg
  black2 = "#2e2e2e",
  one_bg = "#323232",
  one_bg2 = "#3b3b3b",
  one_bg3 = "#434343",
  grey = "#505050",
  grey_fg = "#5a5a5a",
  grey_fg2 = "#646464",
  light_grey = "#6c6c6c",
  red = "#ea6962",
  baby_pink = "#ce8196",
  pink = "#ff75a0",
  line = "#373737", -- for lines like vertsplit
  green = "#89b482",
  vibrant_green = "#a9b665",
  nord_blue = "#6f8faf",
  blue = "#6d8dad",
  yellow = "#d8a657",
  sun = "#eab869",
  purple = "#d3869b",
  dark_purple = "#d3869b",
  teal = "#749689",
  orange = "#e78a4e",
  cyan = "#89b482",
  statusline_bg = "#2c2c2c",
  lightbg = "#393939",
  pmenu_bg = "#89b482",
  folder_bg = "#6d8dad",
}

M.base_16 = {
  base00 = "#151515",
  base01 = "#1c1f25",
  base02 = "#24272d",
  base03 = "#2b2e34",
  base04 = "#33363c",
  base05 = "#c9c7be",
  base06 = "#E6E1CF",
  base07 = "#D9D7CE",
  base08 = "#a72e5b",
  base09 = "#a17643",
  base0A = "#E0AAFF",
  base0B = "#eaa98b",
  base0C = "#25B0BC",
  base0D = "#FDB849",
  base0E = "#F09483",
  base0F = "#d33682",
}

M.polish_hl = {
  Include = { fg = M.base_16.base0E },
  TSVariable = { fg = M.base_16.base08 },
  TSProperty = { fg = M.base_16.base0C },
  Repeat = { fg = M.base_16.base0E },
  TSTagDelimiter = { fg = M.base_30.cyan },
  TSFunction = { fg = M.base_30.orange },
  luaTSField = { fg = M.base_16.base0D },
  TSParameter = { fg = M.base_16.base0F },
  TSConstructor = { fg = M.base_16.base0A },
  TSTagAttribute = { fg = M.base_30.orange },
}

vim.opt.bg = "dark"

M = require("base46").override_theme(M, "dark_horizon")

return M
