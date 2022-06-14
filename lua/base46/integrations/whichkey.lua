local colors = require("base46").get_colors "base_30"

return {
   WhichKey = { fg = colors.blue },
   WhichKeySeparator = { fg = colors.light_grey },
   WhichKeyDesc = { fg = colors.red },
   WhichKeyGroup = { fg = colors.green },
   WhichKeyValue = { fg = colors.green },
}
