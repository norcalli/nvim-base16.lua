local colors = require("base46").get_theme_tb "base_30"

return {

  TblineFill = {
    bg = colors.black2,
  },

  TbLineBufOn = {
    fg = colors.white,
    bg = colors.black,
  },

  TbLineBufOff = {
    fg = colors.light_grey,
    bg = colors.black2,
  },

  TbLineBufOnModified = {
    fg = colors.green,
    bg = colors.black,
  },

  TbBufLineBufOffModified = {
    fg = colors.red,
    bg = colors.black2,
  },

  TbLineBufOnClose = {
    fg = colors.red,
    bg = colors.black,
  },

  TbLineBufOffClose = {
    fg = colors.light_grey,
    bg = colors.black2,
  },

  TbLineThemeToggleBtn = {
    bold = true,
    fg = colors.white,
    bg = colors.one_bg3,
  },

  TbLineCloseAllBufsBtn = {
    bold = true,
    bg = colors.red,
    fg = colors.black,
  },
}
