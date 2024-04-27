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
            autosave_ignore_filetypes = {
                'gitcommit',
                'gitrebase',
                'NvimTree'
            }
        })
    end
}
