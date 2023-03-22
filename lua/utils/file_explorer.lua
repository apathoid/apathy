M = {}


---Toggle file explorer
---@param check boolean should an explorer check if it was opened before
function M.toggle_explorer(check)
    local ft = apth.config.file_explorer.filetype

    if ft == 'neo-tree' then
        vim.cmd('Neotree close')
        vim.cmd('Neotree show')
    elseif ft == 'NvimTree' then
        local api = require('nvim-tree.api')
        local nvimtree_view = require('nvim-tree.view')

        if check and nvimtree_view.is_visible or not check then
            api.tree.toggle()
            api.tree.toggle({ focus = false })
        end
    end
end


return M
