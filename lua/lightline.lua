--Based on https://github.com/mike-hearn/base16-vim-lightline/blob/master/templates/default.mustache
local nvim = require('nvim')

local function part(color1, color2)
    return {color1[1], color2[1], color1[2], color2[2]}
end

function base16_to_lightline(theme)
    local base00 = { theme.base00,  '0' } -- black
    local base01 = { theme.base01, '18' }
    local base02 = { theme.base02, '19' }
    local base03 = { theme.base03,  '8' }
    local base04 = { theme.base04, '20' }
    local base05 = { theme.base05,  '7' }
    local base06 = { theme.base06, '21' }
    local base07 = { theme.base07, '15' } -- white

    local base08 = { theme.base08,  '1' } -- red
    local base09 = { theme.base09, '16' } -- orange
    local base0A = { theme.base0A,  '3' } -- yellow
    local base0B = { theme.base0B,  '2' } -- green
    local base0C = { theme.base0C,  '6' } -- teal
    local base0D = { theme.base0D,  '4' } -- blue
    local base0E = { theme.base0E,  '5' } -- pink
    local base0F = { theme.base0F, '17' } -- brown

    local p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

    p.normal.left     = { part( s:base00, s:base0D ), part( s:base05, s:base02 ) }
    p.insert.left     = { part( s:base01, s:base0B ), part( s:base05, s:base02 ) }
    p.visual.left     = { part( s:base00, s:base09 ), part( s:base05, s:base02 ) }
    p.replace.left    = { part( s:base00, s:base08 ), part( s:base05, s:base02 ) }
    p.inactive.left   = { part( s:base02, s:base00 ) }

    p.normal.middle   = { part( s:base07, s:base01 ) }
    p.inactive.middle = { part( s:base01, s:base00 ) }

    p.normal.right    = { part( s:base01, s:base03 ), part( s:base06, s:base02 ) }
    p.inactive.right  = { part( s:base01, s:base00 ) }

    p.normal.error    = { part( s:base07, s:base08 ) }
    p.normal.warning  = { part( s:base07, s:base09 ) }

    p.tabline.left    = { part( s:base05, s:base02 ) }
    p.tabline.middle  = { part( s:base05, s:base01 ) }
    p.tabline.right   = { part( s:base05, s:base02 ) }
    p.tabline.tabsel  = { part( s:base02, s:base0A ) }

    vim.g['lightline#colorscheme#base16_nvim#palette'] = p
end
