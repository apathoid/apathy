---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.colorscheme.base')
local vscode_base = require('appearance.colorscheme._vscode-modern')
local vscode_colors = require('appearance.colors.vscode-modern')

local hsl = lush.hsl

local theme = lush.extends({base, vscode_base}).with(function()
    return {
        YankHighlight { fg = '#ffffff', bg = hsl(vscode_colors.blue_sec).de(70).da(10) },

        IlluminatedWordText { gui = 'none', bg = vscode_colors.light_gray },
        IlluminatedWordRead { gui = 'none', bg = vscode_colors.light_gray },
        IlluminatedWordWrite { gui = 'none', bg = vscode_colors.light_gray },

        TabLineFill { fg = base.TabLineFill.fg, bg = vscode_base.NvimTreeNormal.bg },
        TabLineBufferSelected { fg = '#ffffff', bg = vscode_colors.blue_sec },
        TabLineNumber { fg = '#ffffff' },
        TabLineSeparator { fg = '#cccccc' },
        TabLineIcon { fg = '#ffffff' },
        TabLineModified { fg = '#ffffff' },
        TabLineCloseButton { fg = '#ffffff' },
        TabLineCloseButtonHovered { fg = '#f14c4c' },
        TabLineCloseButtonSelectedHovered { fg = '#f14c4c' },
        TabLineTab { fg = '#cccccc', bg = '#1b1b1c' },
        TabLineTabSelected { fg = '#ffffff', bg = base.TabLineTabSelected.bg },

        StatusLine { fg = '#ffffff', bg = '#252526' },
        StatusLineFill { fg = '#ffffff', bg = '#454545' },
        StatusLineNormal { fg = '#ffffff', bg = vscode_colors.blue_thd },
        StatusLineInsert { fg = '#ffffff', bg = '#cc6633' },
        StatusLineVisual { fg = '#ffffff', bg = '#68217a' },
        StatusLineReplace { fg = '#ffffff', bg = vscode_colors.pink },
        StatusLineInactive { base.StatusLineInactive, bg = base.FileExplorerNormal.bg }
    }
end)


return theme
