M = {}


---Toggle file explorer
---@param check boolean should an explorer check if it was opened before
---@param pre function callback before toggling
---@param post function callback after toggling
function M.toggle_explorer(check, pre, post)
    if pre then pre() end

    local ft = apth.config.file_explorer.filetype

    if ft == 'neo-tree' then
        vim.cmd('Neotree close')
        vim.cmd('Neotree show')
    elseif ft == 'NvimTree' then
        local nvimtree = require('nvim-tree')
        local nvimtree_view = require('nvim-tree.view')

        if check and nvimtree_view.is_visible() or not check then
            nvimtree.toggle()
            nvimtree.toggle(false, true)
        end
    end

    if post then post() end
end


return M
