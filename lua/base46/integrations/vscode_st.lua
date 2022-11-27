local colors = require("base46").get_theme_tb "base_30"

local generate_color = require("base46.colors").change_hex_lightness

colors.statusline_bg = generate_color(colors.statusline_bg, 1)

return {
  StatusLine = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
  },

  St_Mode = {
    fg = colors.light_grey,
    bg = colors.one_bg3,
  },

  StText = {
    fg = colors.light_grey,
    bg = colors.statusline_bg,
  },
}
