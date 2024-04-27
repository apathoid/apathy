return {
    'NeogitOrg/neogit',
    -- branch = 'nightly',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'sindrets/diffview.nvim',
        'nvim-telescope/telescope.nvim',
    },
    lazy = true,
    keys = {
        { '<C-m>', ':Neogit<CR>', desc = 'Neogit', silent = true }
    },
    opts = {
        disable_insert_on_commit = true,
        kind = 'split',
        commit_editor = {
            kind = 'floating'
        },
        commit_select_view = {
            kind = 'split_above'
        },
        commit_view = {
            kind = 'split',
            verify_commit = os.execute('which gpg') == 0
        },
        log_view = {
            kind = 'tab'
        },
        rebase_editor = {
            kind = 'tab'
        },
        reflog_view = {
            kind = 'tab'
        },
        merge_editor = {
            kind = 'tab'
        },
        tag_editor = {
            kind = 'vsplit'
        },
        preview_buffer = {
            kind = 'vsplit'
        },
        popup = {
            kind = 'split'
        },
        integrations = {
            telescope = true,
            diffview = true
        }
    }
}
