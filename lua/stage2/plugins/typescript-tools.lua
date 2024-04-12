local ok, ts_tools = pcall(require, 'typescript-tools')

if not ok then
    return
end


local events = require('stage2.plugins.lsp.events')
local capabilities = require('stage2.plugins.lsp.capabilities')
local ts_provider = require('stage2.plugins.lsp.providers.tsserver')


ts_tools.setup({
    on_attach = function(_, bufnr) events.on_attach(bufnr) end,
    on_exit = function(_, bufnr) events.on_exit(bufnr) end,
    capabilities = capabilities.get_capabilities(),
    settings = {
        tsserver_file_preferences = ts_provider.settings.typescript.preferences,
        tsserver_format_options = ts_provider.settings.typescript.format,
        tsserver_plugins = ts_provider.plugins
    }
})
