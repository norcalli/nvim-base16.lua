-- returns a huge table of all highlight groups & their colors

local merge_tb = require("base16").merge_tb

local highlights = {}
local hl_dir = vim.fn.stdpath "data" .. "/site/pack/packer/opt/base46/lua/integrations"

-- push all file names in hl_dir to a table
local hl_files = require("plenary.scandir").scan_dir(hl_dir, {})

for _, file in ipairs(hl_files) do
   local a = vim.fn.fnamemodify(file, ":t")
   a = vim.fn.fnamemodify(a, ":r")

   local integration = require("integrations." .. a)
   highlights = merge_tb(highlights, integration)
end

-- override user highlights if there are any
local user_highlights = require("core.utils").load_config().ui.hl_override
highlights = merge_tb(highlights, user_highlights)

-- finally set all highlights :D
for hl, col in pairs(highlights) do
   vim.api.nvim_set_hl(0, hl, col)
end
