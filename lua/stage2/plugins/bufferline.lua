local ok, bufferline = pcall(require, 'bufferline')

if not ok then
    return
end


local theme = apth.utils.methods.get_theme()

bufferline.setup {
    options = {
        close_command = 'Bdelete! %d',
        right_mouse_command = 'Bdelete! %d',
        left_mouse_command = 'buffer %d',
        numbers = function(arg) return arg.ordinal..'∣' end,
        name_formatter = function(buf) return ' '..buf.name end,
        middle_mouse_command = nil,
        indicator = {
            icon = '▎',
            style = 'icon'
        },
        buffer_close_icon = '',
        modified_icon = '',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 80,
        max_prefix_length = 15,
        tab_size = 1,
        diagnostics = false,
        diagnostics_update_in_insert = false,
        offsets = {
            {
                filetype = apth.config.file_explorer.filetype,
                text = '',
                highlight = 'Directory',
                text_align = 'left',
                padding = 1
            }
        },
        color_icons = true,
        get_element_icon = function(element)
            local devicons = require('nvim-web-devicons')
            local icon = devicons.get_icon_by_filetype(
                element.filetype,
                { default = false }
            )

            return icon, 'TabLineIcon'
        end,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        always_show_bufferline = true,
        separator_style = { ' ', ' ' },
        hover = {
            enabled = true,
            delay = 75,
            reveal = { 'close' }
        },
    },
    highlights = {
        fill = {
            fg = theme.TabLineFill.fg,
            bg = theme.TabLineFill.bg
        },
        background = {
            fg = theme.TabLineBackground.fg,
            bg = theme.TabLineBackground.bg
        },
        buffer_visible = {
            fg = theme.TabLineBufferVisible.fg,
            bg = theme.TabLineBufferVisible.bg
        },
        buffer_selected = {
            fg = theme.TabLineBufferSelected.fg,
            bg = theme.TabLineBufferSelected.bg
        },
        numbers = {
            fg = theme.TabLineNumber.fg,
            bg = theme.TabLineNumber.bg
        },
        numbers_visible = {
            fg = theme.TabLineNumberVisible.fg,
            bg = theme.TabLineNumberVisible.bg
        },
        numbers_selected = {
            fg = theme.TabLineNumberSelected.fg,
            bg = theme.TabLineNumberSelected.bg
        },
        close_button = {
            fg = theme.TabLineCloseButton.fg,
            bg = theme.TabLineCloseButton.bg
        },
        close_button_visible = {
            fg = theme.TabLineCloseButtonVisible.fg,
            bg = theme.TabLineCloseButtonVisible.bg
        },
        close_button_selected = {
            fg = theme.TabLineCloseButtonSelected.fg,
            bg = theme.TabLineCloseButtonSelected.bg
        },
        indicator_selected = {
            fg = theme.TabLineIndicatorSelected.fg,
            bg = theme.TabLineIndicatorSelected.bg
        },
        separator = {
            fg = theme.TabLineSeparator.fg,
            bg = theme.TabLineSeparator.bg
        },
        separator_visible = {
            fg = theme.TabLineSeparatorVisible.fg,
            bg = theme.TabLineSeparatorVisible.bg
        },
        separator_selected = {
            fg = theme.TabLineSeparatorSelected.fg,
            bg = theme.TabLineSeparatorSelected.bg
        },
        modified = {
            fg = theme.TabLineModified.fg,
            bg = theme.TabLineModified.bg
        },
        modified_visible = {
            fg = theme.TabLineModifiedVisible.fg,
            bg = theme.TabLineModifiedVisible.bg
        },
        modified_selected = {
            fg = theme.TabLineModifiedSelected.fg,
            bg = theme.TabLineModifiedSelected.bg
        },
        duplicate = {
            fg = theme.TabLineDuplicate.fg,
            bg = theme.TabLineDuplicate.bg
        },
        duplicate_visible = {
            fg = theme.TabLineDuplicateVisible.fg,
            bg = theme.TabLineDuplicateVisible.bg
        },
        duplicate_selected = {
            fg = theme.TabLineDuplicateSelected.fg,
            bg = theme.TabLineDuplicateSelected.bg
        }
    }
}


local set_keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

set_keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', opts)
set_keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', opts)
set_keymap('n', '<A-Left>', ':BufferLineMovePrev<CR>', opts)
set_keymap('n', '<A-Right>', ':BufferLineMoveNext<CR>', opts)

set_keymap('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', opts)
set_keymap('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', opts)
set_keymap('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', opts)
set_keymap('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', opts)
set_keymap('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', opts)
set_keymap('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', opts)
set_keymap('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', opts)
set_keymap('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', opts)
set_keymap('n', '<A-9>', ':BufferLineGoToBuffer 9<CR>', opts)

set_keymap('n', '<A-c>', ':Bdelete<CR>', opts)
