local M = {}


M.list = {
    'bashls',
    'clangd',
    'cmake',
    'cssls',
    'cssmodules_ls',
    'dockerls',
    'eslint',
    'html',
    'jsonls',
    'marksman',
    'pylsp',
    'lua_ls',
    'taplo',
    'tsserver',
    'tailwindcss',
    'yamlls'
}


function M.setup(on_attach, on_exit)
    local ok, lspconfig = pcall(require, 'lspconfig')

    if not ok then
        return
    end

    local capabilities = require('stage2.plugins.lsp.capabilities')

    for _, server_name in pairs(M.list) do
        local opts = {
            on_attach = on_attach,
            on_exit = on_exit,
            capabilities = capabilities.get_capabilities()
        }

        local has_provider_opts, provider_opts = pcall(require, 'stage2.plugins.lsp.providers.' .. server_name)

        if has_provider_opts then
            opts = vim.tbl_deep_extend('force', opts, provider_opts)
        end

        lspconfig[server_name].setup(opts)
    end
end

return M
