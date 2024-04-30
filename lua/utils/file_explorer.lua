M = {}


---@class is_active_args
---@field ft string file explorer file type to check against

---Check wether passed file type is a file type of the currently used file explorer
---@param args is_active_args
function M.is_active(args)
    return apth.config.file_explorer.filetype == args.ft
end

---@class open_explorer_args
---@field path? string open for path
---@field focus? boolean focus explorer after opening

---Open file explorer
---@param args? open_explorer_args
function M.open_explorer(args)
    local _args = args or {}
    local ft = apth.config.file_explorer.filetype

    local is_opened = M.is_opened()

    if ft == apth.enum.ft.file_explorer.neotree then
        local mode = _args.focus and 'focus' or 'show';
        local dir = 'dir='..(_args.path or './')

        vim.cmd('Neotree '..mode..' '..dir)
    elseif ft == apth.enum.ft.file_explorer.nvimtree then
        local api = require('nvim-tree.api')

        if not is_opened then
            api.tree.toggle({ path = _args.path, focus = _args.focus or false })
        end
    end
end


---Close file explorer
function M.close_explorer()
    local ft = apth.config.file_explorer.filetype

    if ft == apth.enum.ft.file_explorer.neotree then
        vim.cmd('Neotree close')
    elseif ft == apth.enum.ft.file_explorer.nvimtree then
        require('nvim-tree.api').close()
    end
end


---Check wether file explorer is opened
function M.is_opened()
    local ft = apth.config.file_explorer.filetype

    if ft == apth.enum.ft.file_explorer.neotree then
        local manager = require('neo-tree.sources.manager')
        local renderer = require('neo-tree.ui.renderer')

        local state = manager.get_state('filesystem')
        local window_exists = renderer.window_exists(state)

        return window_exists
    elseif ft == apth.enum.ft.file_explorer.nvimtree then
        local view = require('nvim-tree.view')

        return view.is_visible()
    end
end


---@class toggle_explorer_args: open_explorer_args
---@field reopen? boolean reopen explorer if it is already opened

---Toggle file explorer
---@param args? toggle_explorer_args
function M.toggle_explorer(args)
    local _args = args or {}

    local is_opened = M.is_opened()

    if _args.reopen or is_opened then
        M.close_explorer()

        if _args.reopen then
            is_opened = false
        end
    end

    if not is_opened then
        M.open_explorer(_args)
    end
end


return M
