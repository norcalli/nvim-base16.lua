local base16 = require("base46").get_colors "base_16"
local colors = require("base46").get_colors "base_30"

return {
   -- nvim Gps
   GpsItemAbbr = { fg = colors.white, bg = colors.statusline_bg },
   GpsItemAbbrMatch = { fg = colors.blue, bold = true, bg = colors.statusline_bg },
   GpsBorder = { fg = colors.grey, bg = colors.statusline_bg },
   GpsDocBorder = { fg = colors.grey, bg = colors.statusline_bg },

   -- Gps item kinds
   GpsItemKindConstant = { fg = base16.base09, bg = colors.statusline_bg },
   GpsItemKindFunction = { fg = base16.base0D, bg = colors.statusline_bg },
   GpsItemKindIdentifier = { fg = base16.base08, bg = colors.statusline_bg },
   GpsItemKindField = { fg = base16.base08, bg = colors.statusline_bg },
   GpsItemKindVariable = { fg = base16.base0E, bg = colors.statusline_bg },
   GpsItemKindSnippet = { fg = colors.red, bg = colors.statusline_bg },
   GpsItemKindText = { fg = base16.base0B, bg = colors.statusline_bg },
   GpsItemKindStructure = { fg = base16.base0E, bg = colors.statusline_bg },
   GpsItemKindType = { fg = base16.base0A, bg = colors.statusline_bg },
   GpsItemKindKeyword = { fg = base16.base07, bg = colors.statusline_bg },
   GpsItemKindMethod = { fg = base16.base0D, bg = colors.statusline_bg },
   GpsItemKindConstructor = { fg = colors.blue, bg = colors.statusline_bg },
   GpsItemKindFolder = { fg = base16.base07, bg = colors.statusline_bg },
   GpsItemKindModule = { fg = base16.base0A, bg = colors.statusline_bg },
   GpsItemKindProperty = { fg = base16.base08, bg = colors.statusline_bg },
   -- GpsItemKindEnum = { fg = "", bg = colors.statusline_bg},
   GpsItemKindUnit = { fg = base16.base0E, bg = colors.statusline_bg },
   -- GpsItemKindClass = { fg = "", bg = colors.statusline_bg},
   GpsItemKindFile = { fg = base16.base07, bg = colors.statusline_bg },
   -- GpsItemKindInterface = { fg = "", bg = colors.statusline_bg},
   GpsItemKindColor = { fg = colors.red, bg = colors.statusline_bg },
   GpsItemKindReference = { fg = base16.base05, bg = colors.statusline_bg },
   -- GpsItemKindEnumMember = { fg = "", bg = colors.statusline_bg},
   GpsItemKindStruct = { fg = base16.base0E, bg = colors.statusline_bg },
   -- GpsItemKindValue = { fg = "", bg = colors.statusline_bg},
   -- GpsItemKindEvent = { fg = "", bg = colors.statusline_bg},
   GpsItemKindOperator = { fg = base16.base05, bg = colors.statusline_bg },
   GpsItemKindTypeParameter = { fg = base16.base08, bg = colors.statusline_bg },
}
