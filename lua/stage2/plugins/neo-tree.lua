return {
    'nvim-neo-tree/neo-tree.nvim',
    enabled = apth.utils.file_explorer.is_active({ ft = apth.enum.ft.file_explorer.neotree }),
    branch = 'main',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        -- '3rd/image.nvim',
    },
    lazy = false,
    keys = {
        {
            '<C-n>',
            ':lua apth.utils.file_explorer.toggle_explorer({ focus = false })<CR>',
            desc = 'Toggle Neotree',
            silent = true
        }
    },
    config = function()
        local neotree = require('neo-tree')

        neotree.setup({
            close_if_last_window = apth.config.file_explorer.close_if_last,
            add_blank_line_at_top = true,
            open_files_do_not_replace_types = vim.tbl_values(apth.enum.ft.split_utility),
            sources = { 'filesystem', 'buffers', 'git_status', 'document_symbols' },
            enable_diagnostics = false,
            source_selector = {
                winbar = true,
                content_layout = 'center',
                sources = {
                    {
                        source = 'filesystem',
                        display_name = ' 󰉓 Files '
                    },
                    {
                        source = 'buffers',
                        display_name = ' 󰈚 Buffers '
                    },
                    {
                        source = 'git_status',
                        display_name = ' 󰊢 Git '
                    },
                    {
                        source = 'document_symbols',
                        display_name = ' 󰆧 Symbols '
                    }
                }
            },
            window = {
                position = apth.config.file_explorer.position,
                width = apth.config.file_explorer.width,
                mappings = {
                    ['o'] = 'open',
                    ['c'] = 'copy_to_clipboard',
                    ['C'] = 'copy',
                    ['y'] = function(state)
                        local node = state.tree:get_node()
                        local content = node.path:gsub(state.path, ''):sub(2)

                        vim.fn.setreg('"', content)
                        vim.fn.setreg('1', content)
                        vim.fn.setreg('+', content)
                    end,
                    ['Y'] = function(state)
                        local node = state.tree:get_node()
                        local content = node.path

                        vim.fn.setreg('"', content)
                        vim.fn.setreg('1', content)
                        vim.fn.setreg('+', content)
                    end,
                    ['<Tab>'] = 'toggle_node',
                },
                fuzzy_finder_mappings = {
                    ['<Tab>'] = 'move_cursor_down',
                    ['<S-Tab>'] = 'move_cursor_up'
                }
            },
            filesystem = {
                use_libuv_file_watcher = false,
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = true
                },
                hijack_netrw_behavior = 'disabled'
            },
            default_component_configs = {
                git_status = {
                    symbols = {
                        added     = '',
                        modified  = '',
                        deleted   = '',
                        renamed   = '',
                        untracked = 'U',
                        ignored   = '◌',
                        unstaged  = '',
                        staged    = 'S',
                        conflict  = ''
                    }
                },
            }
        })
    end
}
