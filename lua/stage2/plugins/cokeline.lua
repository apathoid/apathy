local ok, cokeline = pcall(require, 'cokeline')

if not ok then
    return
end


local theme = apth.utils.methods.get_theme()

cokeline.setup({
    buffers = {
        focus_on_delete = 'prev',
        new_buffers_position = 'next'
    },
    default_hl = {
        fg = function(buffer)
            return buffer.is_focused and theme.TabLineBufferSelected.fg or theme.TabLineBackground.fg
        end,
        bg = function(buffer)
            return buffer.is_focused and theme.TabLineBufferSelected.bg or theme.TabLineBackground.bg
        end
    },
    sidebar = {
        filetype = apth.config.file_explorer.filetype,
        components = {
            {
                text = '',
                bg = theme.TabLineFill.bg,
                fg = theme.TabLineFill.fg,
                style = 'bold'
            }
        }
    },
    history = {
        enabled = true,
        size = 999
    },
    rendering = {
        max_buffer_width = 80
    },
    components = {
        {
            text = function(buffer) return (buffer.index == 1) and '       ' or '  ' end,
            bg = theme.TabLineFill.bg
        },
        {
            text = function(buffer) return ' ' .. buffer.index end,
            fg = function(buffer) return buffer.is_focused and theme.TabLineNumberSelected.fg or theme.TabLineNumber.fg end
        },
        {
            text = '|',
            fg = function(buffer) return buffer.is_focused and theme.TabLineSeparatorSelected.fg or theme.TabLineSeparator.fg end
        },
        {
            text = function(buffer) return buffer.devicon.icon .. ' ' end,
            fg = function(buffer) return buffer.is_focused and theme.TabLineIconSelected.fg or theme.TabLineIcon.fg end
        },
        {
            text = function(buffer) return buffer.filename end,
            style = function(buffer) return buffer.is_focused and 'bold' or nil end
        },
        {
            text = function(buffer) return (buffer.is_modified) and '*' or '' end,
            fg = function(buffer) return buffer.is_focused and theme.TabLineModifiedSelected.fg or theme.TabLineModified.fg end,
            style = 'bold'
        },
        {
            delete_buffer_on_left_click = true,
            text = ' 󰅖 ',
            fg = function(buffer) return buffer.is_hovered and theme.TabLineCloseButtonHovered.fg or theme.TabLineCloseButton.fg end,
            style = 'bold'
        }
    }
})


-- This au event conflicts with neo-tree
-- if apth.config.file_explorer.filetype == 'neo-tree' then
--     vim.cmd [[
--         autocmd! cokeline_focus BufDelete
--     ]]
-- end


local set_keymap = vim.keymap.set
local opts = { silent = true }

set_keymap('n', '<A-,>', '<Plug>(cokeline-focus-prev)', opts)
set_keymap('n', '<A-.>', '<Plug>(cokeline-focus-next)', opts)
set_keymap('n', '<A-Left>', '<Plug>(cokeline-switch-prev)', opts)
set_keymap('n', '<A-Right>', '<Plug>(cokeline-switch-next)', opts)
set_keymap('n', '<A-c>', ':Bdelete<CR>', opts)

for i = 1,9 do
  set_keymap('n', ('<A-%s>'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), opts)
end
