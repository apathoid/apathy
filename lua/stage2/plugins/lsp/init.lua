return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'b0o/schemastore.nvim',
            'weilbith/nvim-code-action-menu'
        },
        lazy = true,
        event = 'BufReadPre',
        config = function()
            local servers = require('stage2.plugins.lsp.servers')
            local handlers = require('stage2.plugins.lsp.handlers')

            handlers.setup()
            servers.setup()
        end
    },
    require('stage2.plugins.lsp.mason')
}
