local M = {}

M.get_colors = function(type)
   local name

   if vim.g.nvchad_theme then
      name = vim.g.nvchad_theme
   else
      name = require("core.utils").load_config().ui.theme
      vim.g.nvchad_theme = name
   end

   -- theme paths
   local default_path = "hl_themes." .. name
   local user_path = "custom.themes." .. name

   local present1, default_theme = pcall(require, default_path)
   local present2, user_theme = pcall(require, user_path)

   if present1 then
      return default_theme[type]
   elseif present2 then
      return user_theme[type]
   else
      error "No such theme bruh >_< "
   end
end

M.merge_tb = function(table1, table2)
   return vim.tbl_deep_extend("force", table1, table2)
end

M.load_theme = function()
   package.loaded["chadlights" or false] = nil
   require "chadlights"
end

M.override_theme = function(default_theme, theme_name)
   local changed_themes = require("core.utils").load_config().ui.changed_themes

   if changed_themes[theme_name] then
      return M.merge_tb(default_theme, changed_themes[theme_name])
   else
      return default_theme
   end
end

return M
