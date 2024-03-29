local M = {}


function M.setup()
    local options = {
        background = 'dark',
        completeopt = 'menu,menuone,noselect',
        cursorline = true,
        expandtab = true,
        ignorecase = false,
        mouse = 'a',
        number = true,
        scrolloff = 8,
        showmode = false,
        signcolumn = 'yes',
        smartindent = true,
        smarttab = true,
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        syntax = 'on',
        termguicolors = true,
        timeoutlen = 300,
        updatetime = 100,
        wildignore = '*node_modules/**',
        mousemoveevent = true
    }

    for k, v in pairs(options) do
        vim.opt[k] = v
    end

    vim.cmd [[
        filetype plugin on
        set nocompatible
        set t_Co=256
    ]]
end


return M
