local colors = require("base46").get_theme_tb "base_30"
local generate_color = require("base46.colors").change_hex_lightness

local groups = {
  StatusLine = {
    bg = colors.black,
  },

  St_gitIcons = {
    fg = generate_color(colors.light_grey, 8),
    bg = colors.black,
    bold = true,
  },

  -- LSP
  St_lspError = {
    fg = colors.red,
    bg = colors.black,
  },

  St_lspWarning = {
    fg = colors.yellow,
    bg = colors.black,
  },

  St_LspHints = {
    fg = colors.purple,
    bg = colors.black,
  },

  St_LspInfo = {
    fg = colors.green,
    bg = colors.black,
  },

  St_LspProgress = {
    fg = colors.green,
    bg = colors.black,
  },

  St_LspStatus_Icon = {
    fg = colors.black,
    bg = colors.nord_blue,
  },
  St_EmptySpace = {
    fg = colors.black,
    bg = colors.black,
  },

  St_EmptySpace2 = {
    fg = colors.black,
    bg = colors.black,
  },

  St_file_info = {
    bg = colors.black,
    fg = colors.white,
  },

  St_file_sep = {
    bg = colors.black,
    fg = colors.black,
  },
}

local modes = {

  -- MODES

  St_NormalMode = {
    bg = colors.blue,
    fg = colors.black,
    bold = true,
  },

  St_InsertMode = {
    bg = colors.dark_purple,
    fg = colors.black,

    bold = true,
  },

  St_TerminalMode = {
    bg = colors.green,
    fg = colors.black,
    bold = true,
  },

  St_NTerminalMode = {
    bg = colors.yellow,
    fg = colors.black,
    bold = true,
  },

  St_VisualMode = {
    bg = colors.cyan,
    fg = colors.black,
    bold = true,
  },

  St_ReplaceMode = {
    bg = colors.orange,
    fg = colors.black,

    bold = true,
  },

  St_ConfirmMode = {
    bg = colors.teal,
    fg = colors.black,

    bold = true,
  },

  St_CommandMode = {
    bg = colors.green,
    fg = colors.black,

    bold = true,
  },

  St_SelectMode = {
    bg = colors.nord_blue,
    fg = colors.black,

    bold = true,
  },

  St_sep_r = {
    fg = colors.one_bg,
    bg = colors.black,
  },
}

for key, value in pairs(modes) do
  groups[key .. "Sep"] = {
    fg = value.bg,
    bg = colors.black,
  }

  groups[key .. "Text"] = {
    fg = value.bg,
    bg = colors.one_bg,
  }
end

groups = vim.tbl_deep_extend("force", groups, modes)

local function gen_hl(name, col)
  groups["St_" .. name .. "_bg"] = {
    fg = colors.black,
    bg = colors[col],
  }

  groups["St_" .. name .. "_txt"] = {
    fg = colors[col],
    bg = colors.one_bg,
  }

  groups["St_" .. name .. "_sep"] = {
    fg = colors[col],
    bg = colors.black,
  }
end

gen_hl("file", "red")
gen_hl("Pos", "yellow")
gen_hl("cwd", "orange")
gen_hl("lsp", "green")

return groups
