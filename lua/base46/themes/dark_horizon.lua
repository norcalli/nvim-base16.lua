local M = {}

M.base_30 = {
  -- white = "#dcac8b",
  white = "#4a4a4a",
  darker_black = "#080808",
  black = "#0e0e0e", --  nvim bg
  black2 = "#141414",
  one_bg = "#181818",
  one_bg2 = "#212121",
  one_bg3 = "#292929",
  grey = "#363636",
  grey_fg = "#404040",
  grey_fg2 = "#4a4a4a",
  light_grey = "#525252",
  -- red = "#ea6962",
  red = "#dc322f",
  baby_pink = "#a72e5b",
  pink = "#ff75a0",
  line = "#1d1d1d", -- for lines like vertsplit
  green = "#29D398",
  vibrant_green = "#a9b665",
  nord_blue = "#18a3af",
  blue = "#25B0BC",
  yellow = "#fdb830",
  sun = "#ffc038",
  purple = "#da70d6",
  dark_purple = "#c65cc2",
  teal = "#749689",
  orange = "#e78a4e",
  cyan = "#6BE4E6",
  statusline_bg = "#121212",
  lightbg = "#1f1f1f",
  pmenu_bg = "#15bf84",
  folder_bg = "#07929e",
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
  base08 = "#a72e5b", -- Confirmed: Variables Confirmed
  -- base09 = "#a17643", -- Confirmed: Integers, Booleans
  base09 = "#eaa273", -- Confirmed: Integers, Booleans
  base0A = "#6840ff", -- Classes
  base0B = "#eaa98b", -- Confirmed: Strings
  base0C = "#F09483", -- Escape characters, Regular expressions
  base0D = "#FDB849", -- Functions, Methods
  base0E = "#25B0BC", -- Confirmed: Keywords, Storage, Selector, Markup
  base0F = "#d33682", -- Deprecated, Opening/Closing embedded language tags
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
