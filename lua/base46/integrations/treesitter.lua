local theme = require("base46").get_theme_tb "base_16"

return {
  TSAnnotation = {
    fg = theme.base0F,
  },

  TSAttribute = {
    fg = theme.base0A,
  },

  TSTagAttribute = {
    link = "TSProperty",
  },

  TSCharacter = {
    fg = theme.base08,
  },

  TSConstructor = {
    fg = theme.base0C,
  },

  TSConstBuiltin = {
    fg = theme.base09,
  },

  TSConstMacro = {
    fg = theme.base08,
  },

  TSError = {
    fg = theme.base08,
  },

  TSException = {
    fg = theme.base08,
  },

  TSFloat = {
    fg = theme.base09,
  },

  TSKeyword = {
    fg = theme.base0E,
  },

  TSKeywordFunction = {
    fg = theme.base0E,
  },

  TSKeywordReturn = {
    fg = theme.base0E,
  },

  TSFunction = {
    fg = theme.base0D,
  },

  TSFuncBuiltin = {
    fg = theme.base0D,
  },

  TSFuncMacro = {
    fg = theme.base08,
  },

  TSKeywordOperator = {
    fg = theme.base0E,
  },

  TSMethod = {
    fg = theme.base0D,
  },

  TSNamespace = {
    fg = theme.base08,
  },

  TSNone = {
    fg = theme.base05,
  },

  TSParameter = {
    fg = theme.base08,
  },

  TSParameterReference = {
    fg = theme.base05,
  },

  TSPunctBracket = {
    fg = theme.base0F,
  },

  TSPunctDelimiter = {
    fg = theme.base0F,
  },

  TSPunctSpecial = {
    fg = theme.base08,
  },

  TSStringRegex = {
    fg = theme.base0C,
  },

  TSStringEscape = {
    fg = theme.base0C,
  },

  TSSymbol = {
    fg = theme.base0B,
  },

  TSTagDelimiter = {
    fg = theme.base0F,
  },

  TSText = {
    fg = theme.base05,
  },

  TSStrong = {
    bold = true,
  },

  TSEmphasis = {
    fg = theme.base09,
  },

  TSStrike = {
    fg = theme.base00,
    strikethrough = true,
  },

  TSLiteral = {
    fg = theme.base09,
  },

  TSURI = {
    fg = theme.base09,

    underline = true,
  },

  TSTypeBuiltin = {
    fg = theme.base0A,
  },

  TSVariableBuiltin = {
    fg = theme.base09,
  },

  TSVariable = {
    fg = theme.base05,
  },

  TSDefinition = {
    sp = theme.base04,
    underline = true,
  },

  TSDefinitionUsage = {
    sp = theme.base04,
    underline = true,
  },

  TSCurrentScope = {
    bold = true,
  },

  luaTSField = {
    fg = theme.base0D,
  },

  TSFieldKey = {
    fg = theme.base08,
  },

  TSProperty = {
    fg = theme.base08,
  },

  TSInclude = {
    link = "Include",
  },

  TSConditional = {
    link = "Conditional",
  },
}
