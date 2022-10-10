local M = {}

M.base_30 = {
  white = "#ffffff", -- confirmed
  darker_black = "#15252e",
  black = "#1b2b34", --  nvim bg
  black2 = "#21313a",
  one_bg = "#25353e",
  one_bg2 = "#2e3e47",
  one_bg3 = "#36464f",
  grey = "#43535c",
  grey_fg = "#4d5d66",
  grey_fg2 = "#576770",
  light_grey = "#5f6f78", -- TESTING
  red = "#ec5f67", -- Confirmed
  baby_pink = "#ff7d85", -- TESTING
  pink = "#ffafb7",
  line = "#2a3a43", -- for lines like vertsplit
  green = "#99c794", -- Confirmed
  vibrant_green = "#b9e75b",
  nord_blue = "#598cbf", -- Confirmed
  blue = "#6699cc", -- Confirmed
  yellow = "#fac863", -- Confirmed
  sun = "#ffd06b", -- Confirmed
  purple = "#c594c5", -- Confirmed
  dark_purple = "#ac7bac", -- TESTING
  teal = "#50a4a4", -- TESTING
  orange = "#f99157", -- Confirmed
  cyan = "#62b3b2", -- Confirmed
  statusline_bg = "#1f2f38", -- Confirmed
  lightbg = "#2c3c45", -- Confirmed
  pmenu_bg = "#15bf84",
  folder_bg = "#598cbf", -- Confirmed
}

-- Base16 colors taken from:
-- https://github.com/norcalli/nvim-base16.lua/blob/master/lua/base16.lua
M.base_16 = {
  base00 = "#1b2b34", -- Confirmed
  base01 = "#343d46", -- Confirmed
  base02 = "#4f5b66", -- Confirmed
  base03 = "#65737e", -- Confirmed
  base04 = "#a7adba", -- Confirmed
  base05 = "#c0c5ce", -- Confirmed
  base06 = "#cdd3de", -- Confirmed
  base07 = "#d8dee9", -- Confirmed
  base08 = "#ca1243", -- Confirmed
  base09 = "#d75f00", -- Confirmed
  base0A = "#c18401", -- Confirmed
  base0B = "#50a14f", -- Confirmed
  base0C = "#0184bc", -- Confirmed
  base0D = "#4078f2", -- Confirmed
  base0E = "#a626a4", -- Confirmed
  base0F = "#986801", -- Confirmed
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
