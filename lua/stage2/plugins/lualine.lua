local ok, lualine = pcall(require, 'lualine')

if not ok then
    return
end

local theme = require('appearance.colorscheme.'..apth.config.editor.colorscheme)

local lualine_theme = {
    normal = {
        a = { fg = theme.StatusLineNormal.fg, bg = theme.StatusLineNormal.bg },
        b = { fg = theme.StatusLineFill.fg, bg = theme.StatusLineFill.bg },
        c = { fg = theme.StatusLine.fg, bg = theme.StatusLine.bg }
    },
    insert = { a = { fg = theme.StatusLineInsert.fg, bg = theme.StatusLineInsert.bg }},
    visual = { a = { fg = theme.StatusLineVisual.fg, bg = theme.StatusLineVisual.bg }},
    replace = { a = { fg = theme.StatusLineReplace.fg, bg = theme.StatusLineReplace.bg }},
    inactive = {
        a = { fg = theme.StatusLineInactive.fg, bg = theme.StatusLineInactive.bg },
        b = { fg = theme.StatusLineInactive.fg, bg = theme.StatusLineInactive.bg },
        c = { fg = theme.StatusLineInactive.fg, bg = theme.StatusLineInactive.bg }
    }
}

lualine.setup {
    options = {
        theme = lualine_theme,
        disabled_filetypes = { apth.config.file_explorer.filetype }
    }
}
