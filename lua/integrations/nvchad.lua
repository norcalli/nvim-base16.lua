local colors = require("base46").get_colors "base_30"
local ui = require("core.utils").load_config().ui

local black = colors.black
local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local light_grey = colors.light_grey
local line = colors.line
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange

-- highlight groups & colors
local defaults = {

   Comment = { fg = grey_fg },

   -- line numbers
   CursorLineNr = { fg = white },
   LineNr = { fg = grey },

   -- those ugly ~'s
   EndOfBuffer = { fg = black },

   -- floating windows
   FloatBorder = { fg = blue },
   NormalFloat = { bg = darker_black },

   -- Pmenu i.e completion menu
   Pmenu = { bg = black },
   PmenuSbar = { bg = one_bg },
   PmenuSel = { bg = pmenu_bg, fg = black },
   PmenuThumb = { bg = grey },

   -- nvim cmp
   CmpItemAbbr = { fg = white },
   CmpItemAbbrMatch = { fg = blue, bold = true },
   CmpBorder = { fg = grey },
   CmpDocBorder = { fg = grey },

   NvimInternalError = { fg = red },
   WinSeparator = { fg = one_bg2 },

   -- Dashboard i.e alpha.nvim
   AlphaHeader = { fg = grey_fg },
   AlphaButtons = { fg = light_grey },

   -- Gitsigns.nvim
   DiffAdd = {
      fg = blue,
   },

   DiffAdded = {
      fg = green,
   },

   DiffChange = {
      fg = light_grey,
   },

   DiffChangeDelete = {
      fg = red,
   },

   DiffModified = {
      fg = orange,
   },

   DiffDelete = {
      fg = red,
   },

   DiffRemoved = {
      fg = red,
   },

   -- Indent blankline
   IndentBlanklineChar = { fg = line },
   IndentBlanklineSpaceChar = { fg = line },

   -- Lsp Diagnostics
   DiagnosticHint = { fg = purple },
   DiagnosticError = { fg = red },
   DiagnosticWarn = { fg = yellow },
   DiagnosticInformation = { fg = green },

   -- NvimTree
   NvimTreeEmptyFolderName = { fg = folder_bg },
   NvimTreeEndOfBuffer = { fg = darker_black },
   NvimTreeFolderIcon = { fg = folder_bg },
   NvimTreeFolderName = { fg = folder_bg },
   NvimTreeGitDirty = { fg = red },
   NvimTreeIndentMarker = { fg = grey_fg },
   NvimTreeNormal = { bg = darker_black },
   NvimTreeNormalNC = { bg = darker_black },
   NvimTreeOpenedFolderName = { fg = folder_bg },
   NvimTreeGitIgnored = { fg = light_grey },

   NvimTreeWinSeparator = {
      fg = darker_black,
      bg = darker_black,
   },

   NvimTreeWindowPicker = {
      fg = red,
      bg = black2,
   },

   NvimTreeCursorLine = {
      bg = black2,
   },

   -- Telescope
   TelescopeBorder = {
      fg = darker_black,
      bg = darker_black,
   },

   TelescopePromptBorder = {
      fg = black2,
      bg = black2,
   },

   TelescopePromptNormal = {
      fg = white,
      bg = black2,
   },

   TelescopePromptPrefix = {
      fg = red,
      bg = black2,
   },

   TelescopeNormal = { bg = darker_black },

   TelescopePreviewTitle = {
      fg = black,
      bg = green,
   },

   TelescopePromptTitle = {
      fg = black,
      bg = red,
   },

   TelescopeResultsTitle = {
      fg = darker_black,
      bg = darker_black,
   },

   TelescopeSelection = { bg = black2 },
}

if ui.transparency then
   local hl_groups = {
      "NormalFloat",
      "Normal",
      "Folded",
      "NvimTreeNormal",
      "NvimTreeNormalNC",
      "TelescopeNormal",
      "TelescopePrompt",
      "TelescopeResults",
      "TelescopeBorder",
      "TelescopePromptBorder",
      "TelescopePromptNormal",
      "TelescopePromptPrefix",
   }

   for index, _ in ipairs(hl_groups) do
      defaults[hl_groups[index]] = {
         bg = "NONE",
      }
   end

   defaults.NvimTreeWinSeparator = {
      fg = grey,
      bg = "NONE",
   }

   defaults.TelescopeResultsTitle = {
      fg = black,
      bg = blue,
   }
end

return defaults
