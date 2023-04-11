local colors = require("base46").get_theme_tb "base30"

return {
  -- nvim-dap
  DapBreakpoint = { fg = colors.red },
  DapBreakpointCondition = { fg = colors.yellow },
  DapLogPoint = { fg = colors.cyan },
  DapStopped = { fg = colors.baby_pink },

  -- nvim-dap-ui
  DapUIScope = { fg = colors.cyan },
  DapUIType = { fg = colors.dark_purple },
  DapUIValue = { fg = colors.cyan },
  DapUIVariable = { fg = colors.white },
  DapUIModifiedValue = { fg = colors.orange },
  DapUIDecoration = { fg = colors.cyan },
  DapUIThread = { fg = colors.green },
  DapUIStoppedThread = { fg = colors.cyan },
  DapUISource = { fg = colors.lavender },
  DapUILineNumber = { fg = colors.cyan },
  DapUIFloatBorder = { fg = colors.cyan },

  DapUIWatchesEmpty = { fg = colors.baby_pink },
  DapUIWatchesValue = { fg = colors.green },
  DapUIWatchesError = { fg = colors.baby_pink },

  DapUIBreakpointsPath = { fg = colors.cyan },
  DapUIBreakpointsInfo = { fg = colors.green },
  DapUIBreakPointsCurrentLine = { fg = colors.green, bold = true },
  DapUIBreakpointsDisabledLine = { fg = colors.grey_fg2 },

  DapUIStepOver = { fg = colors.blue },
  DapUIStepInto = { fg = colors.blue },
  DapUIStepBack = { fg = colors.blue },
  DapUIStepOut = { fg = colors.blue },
  DapUIStop = { fg = colors.red },
  DapUIPlayPause = { fg = colors.green },
  DapUIRestart = { fg = colors.green },
  DapUIUnavailable = { fg = colors.grey_fg },
}