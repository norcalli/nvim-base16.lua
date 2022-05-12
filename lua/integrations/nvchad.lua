local colors = require("base46").get_colors "base_30"
local ui = nvchad.load_config().ui

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

   -- whichkey

   WhichKey = { fg = blue },
   WhichKeySeparator = { fg = light_grey },
   WhichKeyDesc = { fg = red },
   WhichKeyGroup = { fg = green },
   WhichKeyValue = { fg = green },
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
