local M = {}


local mappings = require('stage2.plugins.lsp.mappings')


function M.on_attach(bufnr)
    mappings.add_buffer_keybindings(bufnr)
end

function M.on_exit(_) end


return M
