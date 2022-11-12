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
            o = 'open',
            H = 'prev_source',
            L = 'next_source',
            h = 'toggle_hidden'
        }
    },
    filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = 'open_default',
        use_libuv_file_watcher = true
    },
    event_handlers = {}
})


local set_keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

set_keymap('n', '<C-n>', ':Neotree toggle<CR>', opts)
