local M = {}


local capabilities = require('stage2.plugins.lsp.capabilities')
local events = require('stage2.plugins.lsp.events')


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
    -- 'tsserver',
    'tailwindcss',
    'vtsls',
    'yamlls'
}

M.list_local = {
    'cssls',
    'cssmodules_ls',
    'eslint',
    'html',
    'jsonls',
    'marksman',
    -- 'tsserver',
    -- 'tailwindcss',
    'vtsls'
}


function M.setup()
    local ok, lspconfig = pcall(require, 'lspconfig')

    if not ok then
        return
    end

    for _, server_name in pairs(M.list) do
        local opts = {
            on_attach = function(_, bufnr) events.on_attach(bufnr) end,
            on_exit = function(_, bufnr) events.on_exit(bufnr) end,
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
