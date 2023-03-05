local colors = require("base46").get_theme_tb "base_30"

return {
  nvUpdaterTitle = { fg = colors.black, bg = colors.green },
  nvUpdaterGitPULL = { bg = colors.darker_black },
  nvUpdaterProgress = { fg = colors.red, bg = colors.one_bg2 },
}
