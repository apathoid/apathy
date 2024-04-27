local servers = require('stage2.plugins.lsp.servers')
local servers_to_ensure = {}

for _, v in ipairs(servers.list) do
    if not apth.utils.methods.has_value(servers.list_local, v) then
        table.insert(servers_to_ensure, v)
    end
end

return {
    {
        'williamboman/mason.nvim',
        dependencies = {
            'williamboman/mason-lspconfig.nvim'
        },
        build = ':MasonUpdate',
        cmd = 'Mason',
        lazy = true,
        opts = {
            ensure_installed = servers_to_ensure
        }
    }
}
