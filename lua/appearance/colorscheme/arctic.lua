---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.colorscheme.base')
local arctic_base = require('appearance.colorscheme._arctic')

local theme = lush.extends({base, arctic_base}).with(function()
    return {
        Directory { fg = '#d4d4d4' },
        YankHighlight { fg = '#d4d4d4', bg = arctic_base.Visual.bg },

        TabLineSeparator { base.TabLineSeparator, bg = arctic_base.TabLineFill.bg },
        TabLineDuplicate { base.TabLineDuplicate, fg = '#8498a9' },
        TabLineDuplicateVisible { base.TabLineDuplicateVisible, fg = '#8498a9' },
        TabLineDuplicateSelected { base.TabLineDuplicateSelected, fg = '#6e9bbf' },

        StatusLine { fg = '#ffffff', bg = '#252526' },
        StatusLineFill { fg = '#ffffff', bg = '#454545' },
        StatusLineNormal { fg = '#ffffff', bg = '#007acc' },
        StatusLineInsert { fg = '#ffffff', bg = '#cc6633' },
        StatusLineVisual { fg = '#ffffff', bg = '#68217a' },
        StatusLineReplace { fg = '#ffffff', bg = '#c586c0' },
        StatusLineInactive { base.StatusLineInactive, bg = base.FileExplorerNormal.bg }
    }
end)

return theme
