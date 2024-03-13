local M = {}


local mason_ok, mason = pcall(require, 'mason')
local mason_lsp_ok, mason_lsp = pcall(require, 'mason-lspconfig')

if not mason_ok or not mason_lsp_ok then
    return
end


local servers = require('stage2.plugins.lsp.servers')
local servers_to_ensure = {}

for _, v in ipairs(servers.list) do
    if not apth.utils.methods.has_value(servers.list_local, v) then
        table.insert(servers_to_ensure, v)
    end
end

function M.setup()
    mason.setup()
    mason_lsp.setup({
        ensure_installed = servers_to_ensure
    })
end


return M
