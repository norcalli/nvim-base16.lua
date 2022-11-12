-- credits to original theme for existing https://github.com/primer/github-vscode-theme
-- This is a modified version of it

local M = {}

M.base_30 = {
  white = "#c9d1d9",
  darker_black = "#010409",
  black = "#0d1117", --  nvim bg
  black2 = "#1a1e24",
  one_bg = "#1c2026",
  one_bg2 = "#262a30", -- StatusBar (filename)
  one_bg3 = "#30343a",
  grey = "#3d4147", -- Line numbers (shouldn't be base01?)
  grey_fg = "#494d53", -- Why this affects comments?
  grey_fg2 = "#53575d",
  light_grey = "#5d6167",
  red = "#ff7b72", -- StatusBar (username)
  baby_pink = "#ffa198",
  pink = "#ec6cb9",
  line = "#1c2026", -- for lines like vertsplit
  green = "#56d364", -- StatusBar (file percentage)
  vibrant_green = "#85e89d",
  nord_blue = "#58a6ff", -- Mode indicator
  blue = "#79c0ff",
  yellow = "#e3b341", --"#d29922",
  sun = "#d29922", --"#e3b341",
  purple = "#d2a8ff",
  dark_purple = "#bc8cff",
  teal = "#39c5cf",
  orange = "#ffa657",
  cyan = "#56d4dd",
  statusline_bg = "#171b21",
  lightbg = "#262a30",
  pmenu_bg = "#3d4147", -- Command bar suggestions
  folder_bg = "#58a6ff",
}

M.base_16 = {
  base00 = "#0d1117", -- Default bg
  base01 = "#1c2026", -- Lighter bg (status bar, line number, folding mks)
  base02 = "#262a30", -- Selection bg
  base03 = "#30343a", -- Comments, invisibles, line hl
  base04 = "#3d4147", -- Dark fg (status bars)
  base05 = "#c9d1d9", -- Default fg (caret, delimiters, Operators)
  base06 = "#d3dbe3", -- Light fg (not often used)
  base07 = "#dde5ed", -- Light bg (not often used)
  base08 = "#79c0ff", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
  base09 = "#4cb0ff", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
  base0A = "#e3b341", -- Classes, Markup Bold, Search Text Background
  base0B = "#a5d6ff", -- Strings, Inherited Class, Markup Code, Diff Inserted
  base0C = "#79c0ff", -- Support, regex, escape chars
  base0D = "#b9a6ff", -- Function, methods, headings
  base0E = "#ff7b72", -- Keywords
  base0F = "#ffa657", -- Deprecated, open/close embedded tags
}

vim.opt.bg = "dark"

M.polish_hl = {
  PmenuSel = {
    fg = M.base_30.white,
  },

  ["@punctuation.bracket"] = {
    fg = M.base_30.white,
  },

  ["@field.key"] = {
    fg = M.base_30.white,
  },

  Constant = {
    fg = M.base_16.base07,
  },

  ["@constructor"] = {
    fg = M.base_30.vibrant_green,
    bold = true,
  },

  Tag = {
    bold = true,
    fg = M.base_30.vibrant_green,
  },
}

M = require("base46").override_theme(M, "github_dark_default")

return M
