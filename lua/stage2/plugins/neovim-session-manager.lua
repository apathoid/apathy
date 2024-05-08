return {
    'Shatur/neovim-session-manager',
    lazy = false,
    keys = {
        { '<C-s>', ':SessionManager<CR>', desc = 'Open session manager', silent = true }
    },
    config = function()
        local sm = require('session_manager')
        local config = require('session_manager.config')

        sm.setup({
            autosave_last_session = true,
            autosave_ignore_not_normal = true,
            autoload_mode = config.AutoloadMode.LastSession,
            autosave_ignore_filetypes = vim.tbl_values(vim.tbl_deep_extend(
                'force',
                {},
                apth.enum.ft.git_window,
                apth.enum.ft.file_explorer,
                apth.enum.ft.split_utility
            ))
        })
    end
}
