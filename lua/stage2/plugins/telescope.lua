local ok, telescope = pcall(require, 'telescope')

if not ok then
    return
end


telescope.setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
        },
        prompt_prefix = '> ',
        selection_caret = '> ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        selection_strategy = 'reset',
        sorting_strategy = 'descending',
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = {
                preview_width = 0.4,
                results_width = 0.8,
                mirror = false
            },
            vertical = {
                mirror = false
            },
            width = 0.9,
            height = 0.9,
            preview_cutoff = 120
        },
        file_sorter = require'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        path_display = {},
        set_env = { ['COLORTERM'] = 'truecolor' },
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = false,
                override_file_sorter = true,
                case_mode = 'smart_case'
            }
        }
    }
}

telescope.load_extension('fzf')


local set_keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local function neo_tree_handler(cmd)
    return function ()
        if vim.bo.filetype == 'neo-tree' then
            vim.cmd('wincmd w')
        end
        vim.cmd(cmd)
    end
end

set_keymap('n', '<leader>ff', neo_tree_handler('Telescope find_files'), opts)
set_keymap('n', '<leader>fg', neo_tree_handler('Telescope live_grep'), opts)
set_keymap('n', '<leader>fb', neo_tree_handler('Telescope buffers'), opts)
set_keymap('n', '<leader>gb', neo_tree_handler('Telescope git_branches'), opts)
set_keymap('n', '<leader>gs', neo_tree_handler('Telescope git_status'), opts)

-- set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
-- set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
-- set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
-- set_keymap('n', '<leader>gb', ':Telescope git_branches<CR>', opts)
-- set_keymap('n', '<leader>gs', ':Telescope git_status<CR>', opts)
set_keymap('n', 'gd', ':lua require("telescope.builtin").lsp_definitions({  })<CR>', opts)
set_keymap('n', 'gr', ':lua require("telescope.builtin").lsp_references({  })<CR>', opts)
