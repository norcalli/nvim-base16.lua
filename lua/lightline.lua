-- Based on https://github.com/mike-hearn/base16-vim-lightline/blob/master/templates/default.mustache
local function part(color1, color2)
    return {"#"..color1[1], "#"..color2[1], color1[2], color2[2]}
end

local function base16_to_lightline(theme)
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

    local p = {normal={}, inactive={}, insert={}, replace={}, visual={}, tabline={}}

    p.normal.left     = { part( base00, base0D ), part( base05, base02 ) }
    p.insert.left     = { part( base01, base0B ), part( base05, base02 ) }
    p.visual.left     = { part( base00, base09 ), part( base05, base02 ) }
    p.replace.left    = { part( base00, base08 ), part( base05, base02 ) }
    p.inactive.left   = { part( base02, base00 ) }

    p.normal.middle   = { part( base07, base01 ) }
    p.inactive.middle = { part( base01, base00 ) }

    p.normal.right    = { part( base01, base03 ), part( base06, base02 ) }
    p.inactive.right  = { part( base01, base00 ) }

    p.normal.error    = { part( base07, base08 ) }
    p.normal.warning  = { part( base07, base09 ) }

    p.tabline.left    = { part( base05, base02 ) }
    p.tabline.middle  = { part( base05, base01 ) }
    p.tabline.right   = { part( base05, base02 ) }
    p.tabline.tabsel  = { part( base02, base0A ) }

    vim.g['lightline#colorscheme#base16_nvim#palette'] = p
end
return { base16_to_lightline=base16_to_lightline }
