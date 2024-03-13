local M = {}


local servers = require('stage2.plugins.lsp.servers')
local handlers = require('stage2.plugins.lsp.handlers')

local mason = require('stage2.plugins.mason')


function M.setup()
    local ok, _ = pcall(require, 'lspconfig')

    if not ok then
        return
    end

    handlers.setup()
    mason.setup()
    servers.setup()
end


return M
