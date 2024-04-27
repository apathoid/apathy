M = {}


---@class open_explorer_args
---@field path? string open for path
---@field focus? boolean focus explorer after opening

---Open file explorer
---@param args? open_explorer_args
function M.open_explorer(args)
    local _args = args or {}
    local ft = apth.config.file_explorer.filetype

    if ft == 'neo-tree' then
        vim.cmd('Neotree show')

        if _args.focus then
            vim.cmd('Neotree focus')
        end
    elseif ft == 'NvimTree' then
        local api = require('nvim-tree.api')
        local view = require('nvim-tree.view')

        if not view.is_visible() then
            api.tree.toggle({ path = _args.path, focus = _args.focus or false })
        end
    end
end


---@class toggle_explorer_args: open_explorer_args
---@field reopen? boolean reopen explorer if it is already opened

---Toggle file explorer
---@param args? toggle_explorer_args
function M.toggle_explorer(args)
    local _args = args or {}
    local ft = apth.config.file_explorer.filetype

    if ft == 'neo-tree' then
        if _args.reopen then
            vim.cmd('Neotree close')
        end

        vim.cmd('Neotree show')
    elseif ft == 'NvimTree' then
        local api = require('nvim-tree.api')

        if _args.reopen then
            api.tree.close()
        end

        M.open_explorer({ focus = _args.focus })
    end
end


return M
