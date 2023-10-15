local M = {}

local cmd = vim.cmd

function M.setup()
    -- Set colorscheme
    M.set_colorscheme()

    -- Highlight yanked text
    M.highlight_yank()
end


function M.set_colorscheme()
    local scheme_name = apth.config.editor.colorscheme

    -- If scheme name starts with underscore, that theme should only extend already applied colorscheme
    -- Underscore is an extension sign
    local is_extender = string.sub(scheme_name, 1, 1) == '_'

    if is_extender then
        -- Remove extension sign and set base colorscheme
        cmd('colorscheme '..string.sub(scheme_name, 2))
    end

    cmd('colorscheme '..scheme_name)
end


function M.highlight_yank()
    cmd [[
        augroup highlight_yank
            autocmd!
            au TextYankPost * silent! lua vim.highlight.on_yank{higroup="YankHighlight", timeout=300}
        augroup END
    ]]
end


return M
