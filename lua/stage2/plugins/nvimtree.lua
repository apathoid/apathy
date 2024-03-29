local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then
    return
end


nvim_tree.setup {
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_netrw = false,
    open_on_tab = true,
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
        side = 'left',
        signcolumn = 'yes'
    },
    renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = true,
        highlight_opened_files = "none",
        root_folder_modifier = ":~",
        indent_markers = {
            enable = false,
            icons = {
                corner = "└ ",
                edge = "│ ",
                none = "  ",
            },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
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
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
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


local function open_nvim_tree(data)
    local IGNORED_FT = {
        'gitcommit'
    }

    -- ft
    local filetype = vim.bo[data.buf].ft

    -- bufer is a real file
    local real_file = vim.fn.filereadable(data.file) == 1

    -- buffer is a [No Name]
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

    -- buffer is a directory
    local is_directory = vim.fn.isdirectory(data.file) == 1

    if vim.tbl_contains(IGNORED_FT, filetype) or not real_file and not no_name and not is_directory then
        return
    end

    -- open the tree
    require('nvim-tree.api').tree.toggle({ focus = false })
end


vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    pattern = 'NvimTree*',
    callback = function()
        apth.utils.file_explorer.open_explorer({ focus = false })
    end
})


local set_keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
