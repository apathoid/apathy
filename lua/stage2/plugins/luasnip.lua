local M = {}


local ok, luasnip = pcall(require, 'luasnip')

if not ok then
    return
end


function M.setup()
    luasnip.config.set_config {
        history = true,
        updateevents = 'TextChanged,TextChangedI',
    }

    require('luasnip.loaders.from_lua').lazy_load()
    require('luasnip.loaders.from_vscode').lazy_load({ paths = '~/.config/nvim/lua/snippets/vscode' })
    require('luasnip.loaders.from_snipmate').lazy_load()
end


return M
