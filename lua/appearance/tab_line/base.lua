---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local fg = '#d4d4d4'
local fg_vis = '#d4d4d4'
local fg_sel = '#d4d4d4'
local fg_hov = '#cccccc'

local bg = '#2d2d2d'
local bg_vis = '#2a2a2a'
local bg_sel = '#404040'

local theme = lush(function()
    return {
        TabLineFill { fg = fg, bg = bg },
        TabLineBackground { fg = fg, bg = bg },
        TabLineBuffer { fg = fg, bg = bg },
        TabLineBufferVisible { fg = fg_vis, bg = bg_vis },
        TabLineBufferSelected { fg = fg_sel, bg = bg_sel },
        TabLineNumber { fg = fg, bg = bg },
        TabLineNumberVisible { fg = fg_vis, bg = bg_vis },
        TabLineNumberSelected { fg = fg_sel, bg = bg_sel },
        TabLineCloseButton { fg = fg, bg = bg },
        TabLineCloseButtonVisible { fg = fg_vis, bg = bg_vis },
        TabLineCloseButtonSelected { fg = fg_sel, bg = bg_sel },
        TabLineCloseButtonHovered { fg = fg_hov },
        TabLineCloseButtonSelectedHovered { fg = fg_hov },
        TabLineSeparator { fg = fg, bg = bg },
        TabLineSeparatorVisible { fg = fg_vis, bg = bg_vis },
        TabLineSeparatorSelected { fg = fg_sel, bg = bg_sel },
        TabLineIndicator { fg = fg, bg = bg },
        TabLineIndicatorVisible { fg = fg_vis, bg = bg_vis },
        TabLineIndicatorSelected { fg = fg_sel, bg = bg_sel },
        TabLineModified { fg = fg, bg = bg },
        TabLineModifiedVisible { fg = fg_vis, bg = bg_vis },
        TabLineModifiedSelected { fg = fg_sel, bg = bg_sel },
        TabLineDuplicate { fg = '#888888', bg = bg },
        TabLineDuplicateVisible { fg = '#888888', bg = bg_vis },
        TabLineDuplicateSelected { fg = '#888888', bg = bg_sel },
        TabLineIcon { fg = fg, bg = bg },
        TabLineIconSelected { fg = fg, bg = bg },
        TabLineTab { fg = fg, bg = bg },
        TabLineTabSelected { fg = fg_sel, bg = bg }
    }
end)


return theme
