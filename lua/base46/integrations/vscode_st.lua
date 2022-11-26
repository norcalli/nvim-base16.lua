local colors = require("base46").get_theme_tb "base_30"

local generate_color = require("base46.colors").change_hex_lightness

colors.statusline_bg = generate_color(colors.statusline_bg, 1)

return {
  StatusLine = {
    fg = generate_color(colors.light_grey, 15),
    bg = colors.statusline_bg,
  },

  St_Mode = {
    fg = generate_color(colors.light_grey, 15),
    bg = colors.one_bg3,
  },
}
