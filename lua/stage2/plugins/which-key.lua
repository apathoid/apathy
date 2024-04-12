local ok, which_key = pcall(require, 'which-key')

if not ok then
    return
end


vim.o.timeout = true
vim.o.timeoutlen = 300

which_key.setup()


which_key.register({
    y = { '<cmd>y<cr>', 'Copy to system buffer' },
    p = { '<cmd>p<cr>', 'Paste from system buffer' },
    h = {
        name = 'git',
        e = { '<cmd>VGit project_diff_preview<cr>', 'Preview project diff' },
        w = { '<cmd>VGit project_hunks_staged_preview<cr>', 'Preview project staged hunks' },
        d = { '<cmd>VGit buffer_diff_preview<cr>', 'Preview buffer diff' },
        h = { '<cmd>VGit buffer_history_preview<cr>', 'Preview buffer history' },
        b = { '<cmd>VGit buffer_blame_preview<cr>', 'Show buffer blame' },
        s = { '<cmd>VGit buffer_hunk_stage<cr>', 'Stage buffer hunk' },
        p = { '<cmd>VGit buffer_hunk_preview<cr>', 'Preview buffer hunk' },
        r = { '<cmd>VGit buffer_hunk_reset<cr>', 'Reset buffer hunk' },
        t = { '<cmd>VGit toggle_diff_preference<cr>', 'Toggle diff preference' }
    },
    v = { '<cmd>TroubleToggle workspace_diagnostics<cr>', 'Show workspace diagnostics' },
    b = { '<cmd>TroubleToggle todo<cr>', 'Show project todos' }
}, { prefix = '<leader>' })
