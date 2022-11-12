local M = {}


function M.get_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    capabilities = vim.lsp.protocol.make_client_capabilities()

    capabilities.textDocument.completion.completionItem.snippetSupport = false
    capabilities.textDocument.completion.completionItem.resolveSupport = {
        properties = {
            'documentation',
            'detail',
            'additionalTextEdits'
        }
    }

    local ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')

    if ok then
        capabilities = cmp_lsp.default_capabilities(capabilities)
    end

    return capabilities
end


return M
