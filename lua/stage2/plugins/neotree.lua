local ok, neotree = pcall(require, 'neo-tree')

if not ok then
    return
end


vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

neotree.setup({
    open_files_in_last_window = false,
    add_blank_line_at_top = true,
    close_if_last_window = apth.config.file_explorer.close_if_last,
    enable_diagnostics = false,
    source_selector = {
        winbar = true,
        content_layout = 'center',
        tab_labels = {
            filesystem = 'Files',
            buffers = 'Bufs',
            git_status = 'Git',
            diagnostics = 'Diagnostic',
            separator = { left = '▏', right= '▕' },
            show_separator_on_edge = false,
            padding = 0,
            highlight_tab = 'NeoTreeTabInactive',
            highlight_tab_active = 'NeoTreeTabActive',
            highlight_background = 'NeoTreeTabInactive',
            highlight_separator = 'NeoTreeTabSeparatorInactive',
            highlight_separator_active = 'NeoTreeTabSeparatorActive',
        }
    },
    default_component_configs = {
        container = {
            right_padding = 0
        },
        indent = {
            padding = 0,
        },
        icon = {
            folder_closed = '',
            folder_open = '',
            folder_empty = 'ﰊ',
            default = '*',
            highlight = 'NeoTreeFileIcon'

        },
        git_status = {
            highlight = 'NeoTreeDimText'
        }
    },
    window = {
        position = apth.config.file_explorer.position,
        width = apth.config.file_explorer.width,
        mappings = {
            ['o'] = 'open',
            ['H'] = 'prev_source',
            ['L'] = 'next_source'
        }
    },
    git_status_async = true,
    filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = 'open_default',
        use_libuv_file_watcher = true,
        async_directory_scan = 'always',
        filtered_items = {
            hide_gitignored = true,
        },
        window = {
            mappings = {
                ['<bs>'] = 'navigate_up',
                ['.'] = 'set_root',
                ['h'] = 'toggle_hidden',
                ['/'] = 'fuzzy_finder',
                ['D'] = 'fuzzy_finder_directory',
                ['f'] = 'filter_on_submit',
                ['<c-x>'] = 'clear_filter',
                ['[g'] = 'prev_git_modified',
                [']g'] = 'next_git_modified',
                ['c'] = 'copy_to_clipboard',
                ['C'] = 'copy',
                ['y'] = function(state)
                    local node = state.tree:get_node()
                    local content = node.path:gsub(state.path, ""):sub(2)

                    vim.fn.setreg('"', content)
                    vim.fn.setreg("1", content)
                    vim.fn.setreg("+", content)
                end,
                ['Y'] = function(state)
                    local node = state.tree:get_node()
                    local content = node.path

                    vim.fn.setreg('"', content)
                    vim.fn.setreg("1", content)
                    vim.fn.setreg("+", content)
                end
            }
        }
    },
    buffers = {
        mappings = {
            ['bd'] = 'buffer_delete',
            ['<bs>'] = 'navigate_up',
            ['.'] = 'set_root',
        }
    },
    git_status = {
        window = {
            mappings = {
                ['A']  = 'git_add_all',
                ['gu'] = 'git_unstage_file',
                ['ga'] = 'git_add_file',
                ['gr'] = 'git_revert_file',
                ['gc'] = 'git_commit',
                ['gp'] = 'git_push',
                ['gg'] = 'git_commit_and_push'
            }
        }
    },
    event_handlers = {}
})


local set_keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

set_keymap('n', '<C-n>', ':Neotree toggle<CR>', opts)
