local M = {}


local mason_ok, mason = pcall(require, 'mason')
local mason_lsp_ok, mason_lsp = pcall(require, 'mason-lspconfig')

if not mason_ok or not mason_lsp_ok then
    return
end


local servers = require('stage2.plugins.lsp.servers')


function M.setup()
    mason.setup()
    mason_lsp.setup({
        ensure_installed = servers.list
    })
end


return M
