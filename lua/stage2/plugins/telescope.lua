return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzf-native.nvim'
        },
        lazy = true,
        keys = {
            { '<leader>ff', ':Telescope find_files<CR>', desc = 'Open Telescope file finder', silent = true },
            { '<leader>fg', ':Telescope live_grep<CR>', desc = 'Open Telescope live grep', silent = true },
            { '<leader>fb', ':Telescope buffers<CR>', desc = 'Open Telescope buffers', silent = true },
            { '<leader>gb', ':Telescope git_branches<CR>', desc = 'Open Telescope git branches', silent = true },
            { '<leader>gs', ':Telescope git_status<CR>', desc = 'Open Telescope git status', silent = true },
            { 'gd', ':lua require("telescope.builtin").lsp_definitions({  })<CR>', desc = 'Open Telescope lsp file definitions', silent = true },
            { 'gr', ':lua require("telescope.builtin").lsp_references({  })<CR>', desc = 'Open Telescope lsp file references', silent = true }
        },
        config = function()
            local telescope = require('telescope')

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
        end
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        lazy = true
    }
}
