local M = {}

local cmd = vim.cmd

function M.setup()
    -- Set colorscheme
    M.set_colorscheme()
end


function M.set_colorscheme()
    local scheme_name = apth.config.editor.colorscheme

    -- If scheme name starts with underscore, that theme should only extend already applied colorscheme
    -- Underscore is an extension sign
    local is_extender = string.sub(scheme_name, 1, 1) == '_'

    if is_extender then
        return
    end

    cmd('colorscheme '..scheme_name)
end


return M
