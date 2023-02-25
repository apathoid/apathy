---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local fg = '#d4d4d4'
local bg = '#202020'

local theme = lush(function()
    return {
        StatusLine { fg = '#bfc5d6', bg = bg },
        StatusLineFill { fg = fg, bg = bg },
        StatusLineNormal { fg = bg, bg = '#ccc8ba' },
        StatusLineInsert { fg = bg, bg = '#afc0b6' },
        StatusLineVisual { fg = bg, bg = '#a1b4ca' },
        StatusLineReplace { fg = bg, bg = '#ba604c' },
        StatusLineInactive { StatusLine, bg = '#0f0f0f' }
    }
end)

return theme
