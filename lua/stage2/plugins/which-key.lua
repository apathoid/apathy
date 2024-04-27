return {
    'folke/which-key.nvim',
    config = function()
        local which_key = require('which-key')

        vim.o.timeout = true
        vim.o.timeoutlen = 300

        which_key.setup()

        which_key.register({
            y = { '<cmd>y<cr>', 'Copy to system buffer' },
            p = { '<cmd>p<cr>', 'Paste from system buffer' },
            h = {
                name = 'git',
                d = { '<cmd>Gitsigns diffthis<cr>', 'Preview buffer diff' },
                t = { '<cmd>Gitsigns toggle_deleted<cr>', 'Preview buffer diff' },
                b = { '<cmd>Gitsigns blame_line<cr>', 'Blame line' },
                l = { '<cmd>Gitsigns toggle_current_line_blame<cr>', 'Toggle line blaming' },
                s = { '<cmd>Gitsigns stage_hunk<cr>', 'Stage buffer hunk' },
                w = { '<cmd>Gitsigns stage_buffer<cr>', 'Stage buffer' },
                p = { '<cmd>Gitsigns preview_hunk<cr>', 'Preview buffer hunk' },
                r = { '<cmd>Gitsigns reset_hunk<cr>', 'Reset buffer hunk' },
                z = { '<cmd>Gitsigns reset_buffer<cr>', 'Reset buffer' },
                u = { '<cmd>Gitsigns undo_stage_hunk<cr>', 'Undo hunk staging' },
                -- e = { '<cmd>VGit project_diff_preview<cr>', 'Preview project diff' },
                -- w = { '<cmd>VGit project_hunks_staged_preview<cr>', 'Preview project staged hunks' },
                -- d = { '<cmd>VGit buffer_diff_preview<cr>', 'Preview buffer diff' },
                -- h = { '<cmd>VGit buffer_history_preview<cr>', 'Preview buffer history' },
                -- b = { '<cmd>VGit buffer_blame_preview<cr>', 'Show buffer blame' },
                -- s = { '<cmd>VGit buffer_hunk_stage<cr>', 'Stage buffer hunk' },
                -- p = { '<cmd>VGit buffer_hunk_preview<cr>', 'Preview buffer hunk' },
                -- r = { '<cmd>VGit buffer_hunk_reset<cr>', 'Reset buffer hunk' },
                -- t = { '<cmd>VGit toggle_diff_preference<cr>', 'Toggle diff preference' }
            },
            v = { '<cmd>TroubleToggle workspace_diagnostics<cr>', 'Show workspace diagnostics' },
            b = { '<cmd>TroubleToggle todo<cr>', 'Show project todos' }
        }, { prefix = '<leader>' })
    end
}
