local base16 = require("base46").get_colors "base_16"
local colors = require("base46").get_colors "base_30"

return {
   -- nvim Gps
   GpsItemAbbr = { fg = colors.white, bg = colors.statusline_bg, bold = true },
   GpsItemAbbrMatch = { fg = colors.blue, bold = true, bg = colors.statusline_bg },
   GpsBorder = { fg = colors.grey, bg = colors.statusline_bg, bold = true },
   GpsDocBorder = { fg = colors.grey, bg = colors.statusline_bg, bold = true },

   -- Gps item kinds
   GpsItemKindConstant = { fg = base16.base09, bg = colors.statusline_bg, bold = true },
   GpsItemKindFunction = { fg = base16.base0D, bg = colors.statusline_bg, bold = true },
   GpsItemKindIdentifier = { fg = base16.base08, bg = colors.statusline_bg, bold = true },
   GpsItemKindField = { fg = base16.base08, bg = colors.statusline_bg, bold = true },
   GpsItemKindVariable = { fg = base16.base0E, bg = colors.statusline_bg, bold = true },
   GpsItemKindSnippet = { fg = colors.red, bg = colors.statusline_bg, bold = true },
   GpsItemKindText = { fg = base16.base0B, bg = colors.statusline_bg, bold = true },
   GpsItemKindStructure = { fg = base16.base0E, bg = colors.statusline_bg, bold = true },
   GpsItemKindType = { fg = base16.base0A, bg = colors.statusline_bg, bold = true },
   GpsItemKindKeyword = { fg = base16.base07, bg = colors.statusline_bg, bold = true },
   GpsItemKindMethod = { fg = base16.base0D, bg = colors.statusline_bg, bold = true },
   GpsItemKindConstructor = { fg = colors.blue, bg = colors.statusline_bg, bold = true },
   GpsItemKindFolder = { fg = base16.base07, bg = colors.statusline_bg, bold = true },
   GpsItemKindModule = { fg = base16.base0A, bg = colors.statusline_bg, bold = true },
   GpsItemKindProperty = { fg = base16.base08, bg = colors.statusline_bg, bold = true },
   -- GpsItemKindEnum = { fg = "", bg = colors.statusline_bg, bold = true},
   GpsItemKindUnit = { fg = base16.base0E, bg = colors.statusline_bg, bold = true },
   -- GpsItemKindClass = { fg = "", bg = colors.statusline_bg, bold = true},
   GpsItemKindFile = { fg = base16.base07, bg = colors.statusline_bg, bold = true },
   -- GpsItemKindInterface = { fg = "", bg = colors.statusline_bg, bold = true},
   GpsItemKindColor = { fg = colors.red, bg = colors.statusline_bg, bold = true },
   GpsItemKindReference = { fg = base16.base05, bg = colors.statusline_bg, bold = true },
   -- GpsItemKindEnumMember = { fg = "", bg = colors.statusline_bg, bold = true},
   GpsItemKindStruct = { fg = base16.base0E, bg = colors.statusline_bg, bold = true },
   -- GpsItemKindValue = { fg = "", bg = colors.statusline_bg, bold = true},
   -- GpsItemKindEvent = { fg = "", bg = colors.statusline_bg, bold = true},
   GpsItemKindOperator = { fg = base16.base05, bg = colors.statusline_bg, bold = true },
   GpsItemKindTypeParameter = { fg = base16.base08, bg = colors.statusline_bg, bold = true },
}
