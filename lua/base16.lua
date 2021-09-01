local function highlight(group, guifg, guibg, attr, guisp)
   local parts = { group }
   if guifg then
      table.insert(parts, "guifg=#" .. guifg)
   end
   if guibg then
      table.insert(parts, "guibg=#" .. guibg)
   end
   if attr then
      table.insert(parts, "gui=" .. attr)
   end
   if guisp then
      table.insert(parts, "guisp=#" .. guisp)
   end

   -- nvim.ex.highlight(parts)
   vim.api.nvim_command("highlight " .. table.concat(parts, " "))
end

-- Modified from https://github.com/chriskempson/base16-vim
local function apply_base16_theme(theme)
   -- Neovim terminal colours
   if vim.fn.has "nvim" then
      vim.g.terminal_color_0 = "#" .. theme.base00
      vim.g.terminal_color_1 = "#" .. theme.base08
      vim.g.terminal_color_2 = "#" .. theme.base0B
      vim.g.terminal_color_3 = "#" .. theme.base0A
      vim.g.terminal_color_4 = "#" .. theme.base0D
      vim.g.terminal_color_5 = "#" .. theme.base0E
      vim.g.terminal_color_6 = "#" .. theme.base0C
      vim.g.terminal_color_7 = "#" .. theme.base05
      vim.g.terminal_color_8 = "#" .. theme.base03
      vim.g.terminal_color_9 = "#" .. theme.base08
      vim.g.terminal_color_10 = "#" .. theme.base0B
      vim.g.terminal_color_11 = "#" .. theme.base0A
      vim.g.terminal_color_12 = "#" .. theme.base0D
      vim.g.terminal_color_13 = "#" .. theme.base0E
      vim.g.terminal_color_14 = "#" .. theme.base0C
      vim.g.terminal_color_15 = "#" .. theme.base07
      if vim.o.background == "light" then
         vim.g.terminal_color_background = "#" .. theme.base05
         vim.g.terminal_color_foreground = "#" .. theme.base0B
      else
         vim.g.terminal_color_background = "#" .. theme.base00
         vim.g.terminal_color_foreground = "#" .. theme.base0E
      end
   end

   -- TODO
   -- nvim.command "hi clear"
   -- nvim.command "syntax reset"

   -- Vim editor colors
   highlight("Normal", theme.base05, theme.base00, nil, nil)
   highlight("Bold", nil, nil, "bold", nil)
   highlight("Debug", theme.base08, nil, nil, nil)
   highlight("Directory", theme.base0D, nil, nil, nil)
   highlight("Error", theme.base00, theme.base08, nil, nil)
   highlight("ErrorMsg", theme.base08, theme.base00, nil, nil)
   highlight("Exception", theme.base08, nil, nil, nil)
   highlight("FoldColumn", theme.base0C, theme.base01, nil, nil)
   highlight("Folded", theme.base03, theme.base01, nil, nil)
   highlight("IncSearch", theme.base01, theme.base09, "none", nil)
   highlight("Italic", nil, nil, "none", nil)
   highlight("Macro", theme.base08, nil, nil, nil)
   highlight("MatchParen", nil, theme.base03, nil, nil)
   highlight("ModeMsg", theme.base0B, nil, nil, nil)
   highlight("MoreMsg", theme.base0B, nil, nil, nil)
   highlight("Question", theme.base0D, nil, nil, nil)
   highlight("Search", theme.base01, theme.base0A, nil, nil)
   highlight("Substitute", theme.base01, theme.base0A, "none", nil)
   highlight("SpecialKey", theme.base03, nil, nil, nil)
   highlight("TooLong", theme.base08, nil, nil, nil)
   highlight("Underlined", theme.base08, nil, nil, nil)
   highlight("Visual", nil, theme.base02, nil, nil)
   highlight("VisualNOS", theme.base08, nil, nil, nil)
   highlight("WarningMsg", theme.base08, nil, nil, nil)
   highlight("WildMenu", theme.base08, theme.base0A, nil, nil)
   highlight("Title", theme.base0D, nil, "none", nil)
   highlight("Conceal", theme.base0D, theme.base00, nil, nil)
   highlight("Cursor", theme.base00, theme.base05, nil, nil)
   highlight("NonText", theme.base03, nil, nil, nil)
   highlight("LineNr", theme.base03, "NONE", nil, nil)
   highlight("SignColumn", theme.base03, "NONE", nil, nil)
   highlight("StatusLine", theme.base04, "NONE", "none", nil)
   highlight("StatusLineNC", theme.base03, "NONE", "none", nil)
   highlight("VertSplit", theme.base02, "NONE", "none", nil)
   highlight("ColorColumn", nil, theme.base01, "none", nil)
   highlight("CursorColumn", nil, theme.base01, "none", nil)
   highlight("CursorLine", nil, theme.base01, "none", nil)
   highlight("CursorLineNr", theme.base04, "NONE", nil, nil)
   highlight("QuickFixLine", nil, theme.base01, "none", nil)
   highlight("PMenu", theme.base05, theme.base01, "none", nil)
   highlight("PMenuSel", theme.base01, theme.base05, nil, nil)
   highlight("TabLine", theme.base03, theme.base01, "none", nil)
   highlight("TabLineFill", theme.base03, theme.base01, "none", nil)
   highlight("TabLineSel", theme.base0B, theme.base01, "none", nil)

   -- Standard syntax highlighting
   highlight("Boolean", theme.base09, nil, nil, nil)
   highlight("Character", theme.base08, nil, nil, nil)
   highlight("Comment", theme.base03, nil, nil, nil)
   highlight("Conditional", theme.base0E, nil, nil, nil)
   highlight("Constant", theme.base09, nil, nil, nil)
   highlight("Define", theme.base0E, nil, "none", nil)
   highlight("Delimiter", theme.base0F, nil, nil, nil)
   highlight("Float", theme.base09, nil, nil, nil)
   highlight("Function", theme.base0D, nil, nil, nil)
   highlight("Identifier", theme.base08, nil, "none", nil)
   highlight("Include", theme.base0D, nil, nil, nil)
   highlight("Keyword", theme.base0E, nil, nil, nil)
   highlight("Label", theme.base0A, nil, nil, nil)
   highlight("Number", theme.base09, nil, nil, nil)
   highlight("Operator", theme.base05, nil, "none", nil)
   highlight("PreProc", theme.base0A, nil, nil, nil)
   highlight("Repeat", theme.base0A, nil, nil, nil)
   highlight("Special", theme.base0C, nil, nil, nil)
   highlight("SpecialChar", theme.base0F, nil, nil, nil)
   highlight("Statement", theme.base08, nil, nil, nil)
   highlight("StorageClass", theme.base0A, nil, nil, nil)
   highlight("String", theme.base0B, nil, nil, nil)
   highlight("Structure", theme.base0E, nil, nil, nil)
   highlight("Tag", theme.base0A, nil, nil, nil)
   highlight("Todo", theme.base0A, theme.base01, nil, nil)
   highlight("Type", theme.base0A, nil, "none", nil)
   highlight("Typedef", theme.base0A, nil, nil, nil)

   ---
   -- Extra definitions
   ---

   -- C highlighting
   highlight("cOperator", theme.base0C, nil, nil, nil)
   highlight("cPreCondit", theme.base0E, nil, nil, nil)

   -- C# highlighting
   highlight("csClass", theme.base0A, nil, nil, nil)
   highlight("csAttribute", theme.base0A, nil, nil, nil)
   highlight("csModifier", theme.base0E, nil, nil, nil)
   highlight("csType", theme.base08, nil, nil, nil)
   highlight("csUnspecifiedStatement", theme.base0D, nil, nil, nil)
   highlight("csContextualStatement", theme.base0E, nil, nil, nil)
   highlight("csNewDecleration", theme.base08, nil, nil, nil)

   -- CSS highlighting
   highlight("cssBraces", theme.base05, nil, nil, nil)
   highlight("cssClassName", theme.base0E, nil, nil, nil)
   highlight("cssColor", theme.base0C, nil, nil, nil)

   -- Diff highlighting
   highlight("DiffAdd", theme.base0B, theme.base01, nil, nil)
   highlight("DiffChange", theme.base03, theme.base01, nil, nil)
   highlight("DiffDelete", theme.base08, theme.base01, nil, nil)
   highlight("DiffText", theme.base0D, theme.base01, nil, nil)
   highlight("DiffAdded", theme.base0B, theme.base00, nil, nil)
   highlight("DiffFile", theme.base08, theme.base00, nil, nil)
   highlight("DiffNewFile", theme.base0B, theme.base00, nil, nil)
   highlight("DiffLine", theme.base0D, theme.base00, nil, nil)
   highlight("DiffRemoved", theme.base08, theme.base00, nil, nil)

   -- Git highlighting
   highlight("gitcommitOverflow", theme.base08, nil, nil, nil)
   highlight("gitcommitSummary", theme.base0B, nil, nil, nil)
   highlight("gitcommitComment", theme.base03, nil, nil, nil)
   highlight("gitcommitUntracked", theme.base03, nil, nil, nil)
   highlight("gitcommitDiscarded", theme.base03, nil, nil, nil)
   highlight("gitcommitSelected", theme.base03, nil, nil, nil)
   highlight("gitcommitHeader", theme.base0E, nil, nil, nil)
   highlight("gitcommitSelectedType", theme.base0D, nil, nil, nil)
   highlight("gitcommitUnmergedType", theme.base0D, nil, nil, nil)
   highlight("gitcommitDiscardedType", theme.base0D, nil, nil, nil)
   highlight("gitcommitBranch", theme.base09, nil, "bold", nil)
   highlight("gitcommitUntrackedFile", theme.base0A, nil, nil, nil)
   highlight("gitcommitUnmergedFile", theme.base08, nil, "bold", nil)
   highlight("gitcommitDiscardedFile", theme.base08, nil, "bold", nil)
   highlight("gitcommitSelectedFile", theme.base0B, nil, "bold", nil)

   -- HTML highlighting
   highlight("htmlBold", theme.base0A, nil, nil, nil)
   highlight("htmlItalic", theme.base0E, nil, nil, nil)
   highlight("htmlEndTag", theme.base05, nil, nil, nil)
   highlight("htmlTag", theme.base05, nil, nil, nil)

   -- JavaScript highlighting
   highlight("javaScript", theme.base05, nil, nil, nil)
   highlight("javaScriptBraces", theme.base05, nil, nil, nil)
   highlight("javaScriptNumber", theme.base09, nil, nil, nil)
   -- pangloss/vim-javascript highlighting
   highlight("jsOperator", theme.base0D, nil, nil, nil)
   highlight("jsStatement", theme.base0E, nil, nil, nil)
   highlight("jsReturn", theme.base0E, nil, nil, nil)
   highlight("jsThis", theme.base08, nil, nil, nil)
   highlight("jsClassDefinition", theme.base0A, nil, nil, nil)
   highlight("jsFunction", theme.base0E, nil, nil, nil)
   highlight("jsFuncName", theme.base0D, nil, nil, nil)
   highlight("jsFuncCall", theme.base0D, nil, nil, nil)
   highlight("jsClassFuncName", theme.base0D, nil, nil, nil)
   highlight("jsClassMethodType", theme.base0E, nil, nil, nil)
   highlight("jsRegexpString", theme.base0C, nil, nil, nil)
   highlight("jsGlobalObjects", theme.base0A, nil, nil, nil)
   highlight("jsGlobalNodeObjects", theme.base0A, nil, nil, nil)
   highlight("jsExceptions", theme.base0A, nil, nil, nil)
   highlight("jsBuiltins", theme.base0A, nil, nil, nil)

   -- Mail highlighting
   highlight("mailQuoted1", theme.base0A, nil, nil, nil)
   highlight("mailQuoted2", theme.base0B, nil, nil, nil)
   highlight("mailQuoted3", theme.base0E, nil, nil, nil)
   highlight("mailQuoted4", theme.base0C, nil, nil, nil)
   highlight("mailQuoted5", theme.base0D, nil, nil, nil)
   highlight("mailQuoted6", theme.base0A, nil, nil, nil)
   highlight("mailURL", theme.base0D, nil, nil, nil)
   highlight("mailEmail", theme.base0D, nil, nil, nil)

   -- Markdown highlighting
   highlight("markdownCode", theme.base0B, nil, nil, nil)
   highlight("markdownError", theme.base05, theme.base00, nil, nil)
   highlight("markdownCodeBlock", theme.base0B, nil, nil, nil)
   highlight("markdownHeadingDelimiter", theme.base0D, nil, nil, nil)

   -- PHP highlighting
   highlight("phpMemberSelector", theme.base05, nil, nil, nil)
   highlight("phpComparison", theme.base05, nil, nil, nil)
   highlight("phpParent", theme.base05, nil, nil, nil)
   highlight("phpMethodsVar", theme.base0C, nil, nil, nil)

   -- Python highlighting
   highlight("pythonOperator", theme.base0E, nil, nil, nil)
   highlight("pythonRepeat", theme.base0E, nil, nil, nil)
   highlight("pythonInclude", theme.base0E, nil, nil, nil)
   highlight("pythonStatement", theme.base0E, nil, nil, nil)

   -- Ruby highlighting
   highlight("rubyAttribute", theme.base0D, nil, nil, nil)
   highlight("rubyConstant", theme.base0A, nil, nil, nil)
   highlight("rubyInterpolationDelimiter", theme.base0F, nil, nil, nil)
   highlight("rubyRegexp", theme.base0C, nil, nil, nil)
   highlight("rubySymbol", theme.base0B, nil, nil, nil)
   highlight("rubyStringDelimiter", theme.base0B, nil, nil, nil)

   -- SASS highlighting
   highlight("sassidChar", theme.base08, nil, nil, nil)
   highlight("sassClassChar", theme.base09, nil, nil, nil)
   highlight("sassInclude", theme.base0E, nil, nil, nil)
   highlight("sassMixing", theme.base0E, nil, nil, nil)
   highlight("sassMixinName", theme.base0D, nil, nil, nil)

   -- Spelling highlighting
   highlight("SpellBad", nil, nil, "undercurl", theme.base08)
   highlight("SpellLocal", nil, nil, "undercurl", theme.base0C)
   highlight("SpellCap", nil, nil, "undercurl", theme.base0D)
   highlight("SpellRare", nil, nil, "undercurl", theme.base0E)

   -- Java highlighting
   highlight("javaOperator", theme.base0D, nil, nil, nil)

   -- LspDiagnostic base highlight group
   highlight("LspDiagnosticsDefaultError", theme.base08, nil, nil, nil)
   highlight("LspDiagnosticsDefaultWarning", theme.base0A, nil, nil, nil)
   highlight("LspDiagnosticsDefaultInformation", theme.base0D, nil, nil, nil)
   highlight("LspDiagnosticsDefaultHint", theme.base0C, nil, nil, nil)

   -- TODO
   -- nvim.command 'syntax on'
end

return setmetatable({
   themes = function(name)
      name = "themes/" .. name .. "-base16"
      local present, theme_array = pcall(require, name)
      if present then
         return theme_array
      else
         error("No such base16 theme: " .. name)
      end
   end,
   apply_theme = apply_base16_theme,
   theme_from_array = function(array)
      assert(#array == 16, "base16.theme_from_array: The array length must be 16")
      local result = {}
      for i, value in ipairs(array) do
         assert(#value == 6, "base16.theme_from_array: array values must be in 6 digit hex format, e.g. 'ffffff'")
         local key = ("base%02X"):format(i - 1)
         result[key] = value
      end
      return result
   end,
}, {
   __call = function(_, ...)
      apply_base16_theme(...)
   end,
})
