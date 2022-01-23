-- This is test file only. the structure helps
-- visualizing colors while having # at the beginning
-- with tools like color-highlighter
-- copy this file, use it in your new theme, once
-- development is done. just return `colors` table from theme

local colors = {
   base00 = "#", -- bg
   base01 = "#", -- lightbg
   base02 = "#", -- selection bg
   base03 = "#", -- comments, line highlighting
   base04 = "#", -- dark foreground
   base05 = "#", -- Default Foreground, Caret, Delimiters, Operators
   base06 = "#", -- Light Foreground (Not often used)
   base07 = "#", -- Light Background (Not often used)
   base08 = "#", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
   base09 = "#", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
   base0A = "#", -- Classes, Markup Bold, Search Text Background
   base0B = "#", -- Strings, Inherited Class, Markup Code, Diff Inserted
   base0C = "#", -- Support, Regular Expressions, Escape Characters, Markup Quotes
   base0D = "#", -- Functions, Methods, Attribute IDs, Headings
   base0E = "#", -- Keywords, Storage, Selector, Markup Italic, Diff Changed
   base0F = "#", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
}

-- return cols

-- vim macro for removing hash: qawex+q15@a while being on first "b" in base00
