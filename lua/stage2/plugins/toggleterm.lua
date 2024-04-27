return {
    'akinsho/toggleterm.nvim',
    lazy = true,
    keys = {
        { '<leader>t', desc = 'Open a terminal', silent = true }
    },
    config = function()
        local toggleterm = require('toggleterm')

        toggleterm.setup {
            size = apth.config.split_utility.bottom.height,
            open_mapping = [[<leader>t]],
            hide_numbers = true,
            direction = 'horizontal',
            close_on_exit = true,
            start_in_insert = not (apth.config.file_explorer.filetype == 'neo-tree'),
            persist_mode = false,
            auto_scroll = true,
            on_open = function(terminal)
                if not terminal.direction == 'horizontal' then
                    return
                end

                apth.utils.file_explorer.toggle_explorer({ reopen = true, focus = false })
            end
        }

        local set_keymap = vim.keymap.set
        local opts = { noremap = true, silent = true }

        -- set_map_key('t', '<esc>', [[<C-\><C-n>]], opts)
        set_keymap('t', '<A-h>', [[<C-\><C-n><C-W>h]], opts)
        set_keymap('t', '<A-l>', [[<C-\><C-n><C-W>l]], opts)
        set_keymap('t', '<A-j>', [[<C-\><C-n><C-W>j]], opts)
        set_keymap('t', '<A-k>', [[<C-\><C-n><C-W>k]], opts)
    end
}
