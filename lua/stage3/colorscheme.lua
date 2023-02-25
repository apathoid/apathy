local M = {}

local cmd = vim.cmd

function M.setup()
    local scheme_name = apth.config.editor.colorscheme

    -- Set colorscheme
    cmd('colorscheme '..scheme_name)

    -- Highlight yanked text
    M.highlight_yank()
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
