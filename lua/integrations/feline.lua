local colors = require("base46").get_colors "base_30"

return {

   Feline = {
      fg = colors.grey_fg2,
      bg = colors.statusline_bg,
   },

   FelineIcon = {
      fg = colors.statusline_bg,
      bg = colors.nord_blue,
   },

   FelineIconSeparator = {
      fg = colors.nord_blue,
      bg = colors.grey,
   },

   FelineCwd = {
      fg = colors.red,
      bg = colors.statusline_bg,
   },

   Feline_diffIcons = {
      fg = colors.light_grey,
      bg = colors.statusline_bg,
   },

   -- LSP

   Feline_lspError = {
      fg = colors.red,
      bg = colors.statusline_bg,
   },

   Feline_lspWarning = {
      fg = colors.yellow,
      bg = colors.statusline_bg,
   },

   Feline_LspHints = {
      fg = colors.purple,
      bg = colors.statusline_bg,
   },

   Feline_LspInfo = {
      fg = colors.green,
      bg = colors.statusline_bg,
   },

   Feline_LspIcon = {
      fg = colors.teal,
      bg = colors.statusline_bg,
   },

   Feline_LspProgress = {
      fg = colors.green,
      bg = colors.statusline_bg,
   },

   -- MODES

   Feline_NormalMode = {
      fg = colors.nord_blue,
      bg = colors.lightbg,
   },

   Feline_InsertMode = {
      fg = colors.dark_purple,
      bg = colors.lightbg,
   },

   Feline_TerminalMode = {
      fg = colors.green,
      bg = colors.lightbg,
   },

   Feline_VisualMode = {
      fg = colors.cyan,
      bg = colors.lightbg,
   },

   Feline_ReplaceMode = {
      fg = colors.orange,
      bg = colors.lightbg,
   },

   Feline_ConfirmMode = {
      fg = colors.teal,
      bg = colors.lightbg,
   },

   Feline_CommandMode = {
      fg = colors.pink,
      bg = colors.lightbg,
   },

   Feline_SelectMode = {
      fg = colors.nord_blue,
      bg = colors.lightbg,
   },

   Feline_EmptySpace = {
      fg = colors.grey,
      bg = colors.lightbg,
   },

   Feline_file_info = {
      bg = colors.nord_blue,
      fg = colors.lightbg,
   },

   Feline_file_info_sep = {
      fg = colors.nord_blue,
      bg = colors.grey,
   },

   Feline_nvim_gps = {
      fg = colors.purple,
      bg = colors.statusline_bg,
   },

   Feline_time = {
      fg = colors.red,
      bg = colors.lightbg,
   },

   Feline_CurrentLine = {
      fg = colors.green,
      bg = colors.lightbg,
   },

   Feline_PositionIcon = {
      fg = colors.black,
      bg = colors.green,
   },

   Feline_PositionSeparator = {
      fg = colors.green,
      bg = colors.grey,
   },
}
