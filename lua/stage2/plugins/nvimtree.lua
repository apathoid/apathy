return {
    'nvim-tree/nvim-tree.lua',
    enabled = apth.utils.file_explorer.is_active({ ft = apth.enum.ft.file_explorer.nvimtree }),
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    lazy = false,
    keys = {
        {
            '<C-n>',
            ':lua apth.utils.file_explorer.toggle_explorer({ focus = false })<CR>',
            desc = 'Toggle NvimTree',
            silent = true
        }
    },
    config = function()
        local nvim_tree = require('nvim-tree')

        nvim_tree.setup {
            auto_reload_on_write = true,
            disable_netrw = false,
            hijack_netrw = false,
            open_on_tab = false,
            hijack_cursor = true,
            update_cwd = false,
            update_focused_file = {
                enable = true,
                update_cwd  = false,
                ignore_list = {}
            },
            system_open = {
                cmd  = nil,
                args = {}
            },
            view = {
                width = apth.config.file_explorer.width,
                side = apth.config.file_explorer.position,
                signcolumn = 'yes'
            },
            renderer = {
                add_trailing = false,
                group_empty = false,
                highlight_git = true,
                highlight_opened_files = 'none',
                root_folder_modifier = ':~',
                indent_markers = {
                    enable = false,
                    icons = {
                        corner = '└ ',
                        edge = '│ ',
                        none = '  ',
                    },
                },
                icons = {
                    webdev_colors = true,
                    git_placement = 'before',
                    padding = ' ',
                    symlink_arrow = ' ➛ ',
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                    glyphs = {
                        default = '',
                        symlink = '',
                        folder = {
                            arrow_closed = '',
                            arrow_open = '',
                            default = '',
                            open = '',
                            empty = '',
                            empty_open = '',
                            symlink = '',
                            symlink_open = '',
                        },
                        git = {
                            deleted = '',
                            ignored = '◌',
                            renamed = '➜',
                            staged = 'S',
                            unmerged = '',
                            unstaged = '',
                            untracked = 'U',
                        },
                    },
                },
                special_files = { 'Cargo.toml', 'Makefile', 'README.md', 'readme.md' },
            },
            actions = {
                open_file = {
                    resize_window = true
                }
            },
            diagnostics = {
                enable = true,
                icons = {
                    hint = '',
                    info = '',
                    warning = '',
                    error = '',
                }
            },
            git = {
                enable = true,
                ignore = true
            }
        }
    end
}
