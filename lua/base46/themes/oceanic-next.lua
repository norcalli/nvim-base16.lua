local M = {}

M.base_30 = {
  white = "#5fb3b3", -- confirmed
  darker_black = "#15252e",
  black = "#1B2B34", --  nvim bg
  black2 = "#21313a",
  one_bg = "#25353e",
  one_bg2 = "#2e3e47",
  one_bg3 = "#36464f",
  grey = "#43535c",
  grey_fg = "#4d5d66",
  grey_fg2 = "#576770",
  light_grey = "#5f6f78",
  red = "#EC5F67",
  baby_pink = "#ff7d85",
  pink = "#ffafb7",
  line = "#2a3a43", -- for lines like vertsplit
  green = "#99C794",
  vibrant_green = "#b9e75b",
  nord_blue = "#598cbf",
  blue = "#6699CC",
  yellow = "#FAC863",
  sun = "#ffd06b",
  purple = "#C594C5",
  dark_purple = "#ac7bac",
  teal = "#50a4a4",
  orange = "#F99157",
  cyan = "#62B3B2",
  statusline_bg = "#1f2f38",
  lightbg = "#2c3c45",
  pmenu_bg = "#15bf84",
  folder_bg = "#598cbf",
}

-- Base16 colors taken from:
-- https://github.com/norcalli/nvim-base16.lua/blob/master/lua/base16.lua
M.base_16 = {
  base00 = "#1B2B34", -- Confirmed
  base01 = "#343D46", -- Confirmed
  base02 = "#4F5B66", -- Confirmed
  base03 = "#65737e", -- Confirmed
  base04 = "#A7ADBa", -- Confirmed
  base05 = "#C0C5Ce", -- Confirmed
  base06 = "#CDD3De", -- Confirmed
  base07 = "#D8DEE9", -- Confirmed
  base08 = "#EC5F67", -- Confirmed
  base09 = "#F99157", -- Confirmed
  base0A = "#FAC863", -- Confirmed
  base0B = "#99C794", -- Confirmed
  base0C = "#62B3B2", -- Confirmed
  base0D = "#6699CC", -- Confirmed
  base0E = "#C594C5", -- Confirmed
  base0F = "#AB7967", -- Confirmed
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
