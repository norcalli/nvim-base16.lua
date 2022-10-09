local M = {}

M.base_30 = {
  white = "#ffffff", -- confirmed
  darker_black = "#080808",
  black = "#0e0e0e", --  nvim bg
  black2 = "#181818",
  one_bg = "#1c1c1c",
  one_bg2 = "#212121",
  one_bg3 = "#292929",
  grey = "#363636",
  grey_fg = "#404040",
  grey_fg2 = "#4a4a4a",
  light_grey = "#525252",
  red = "#ec5f67", -- Confirmed
  baby_pink = "#a72e5b",
  pink = "#ff75a0",
  line = "#1d1d1d", -- for lines like vertsplit
  green = "#99c794", -- Confirmed
  vibrant_green = "#b9e75b",
  nord_blue = "#18a3af",
  blue = "#6699cc", -- Confirmed
  yellow = "#fac863", -- Confirmed
  sun = "#ffc038",
  purple = "#c594c5", -- Confirmed
  dark_purple = "#c65cc2",
  teal = "#749689",
  orange = "#f99157", -- Confirmed
  cyan = "#62b3b2", -- Confirmed
  statusline_bg = "#181818",
  lightbg = "#292929",
  pmenu_bg = "#15bf84",
  folder_bg = "#07929e",
}

M.base_16 = {
  base00 = "#1b2b34", -- Confirmed
  base01 = "#343d46", -- Confirmed
  base02 = "#4f5b66", -- Confirmed
  base03 = "#65737e", -- Confirmed
  base04 = "#a7adba", -- Confirmed
  base05 = "#c0c5ce", -- Confirmed
  base06 = "#cdd3de", -- Confirmed
  base07 = "#d8dee9", -- Confirmed
  base08 = "#D9D7CE",
  base09 = "#eaa273",
  base0A = "#825aff",
  base0B = "#E3A587",
  base0C = "#F09483",
  base0D = "#FFA500",
  base0E = "#2ca9b4",
  base0F = "#d75271",
}

M.polish_hl = {
  Include = { fg = M.base_16.base0E, bold = true },
  TSVariable = { fg = M.base_16.base08 },
  TSProperty = { fg = M.base_16.base0E },
  Repeat = { fg = M.base_16.base0E },
  TSTagDelimiter = { fg = M.base_16.base05 },
  TSFunction = { fg = M.base_30.orange },
  luaTSField = { fg = M.base_16.base0E },
  TSParameter = { fg = M.base_16.base0F },
  TSConstructor = { fg = M.base_16.base0A },
  TSTagAttribute = { fg = M.base_16.orange },
}

vim.opt.bg = "dark"

M = require("base46").override_theme(M, "oceanic-next")

return M
