local M = {}


function M.setup()
    -- Set options
    M.set_opts()

    -- Set editor variables
    M.set_editor_vars()

    vim.cmd [[
        filetype plugin on
        set nocompatible
        set t_Co=256
    ]]
end


function M.set_opts()
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
        updatetime = 300,
        incsearch = false,
        wildignore = '*node_modules/**',
        mousemoveevent = true
    }

    for k, v in pairs(options) do
        vim.opt[k] = v
    end
end


function M.set_editor_vars()
    local vars = {
        loaded_netrw = 0,
        loaded_netrwPlugin = 0
    }

    for k, v in pairs(vars) do
        vim.g[k] = v
    end
end


return M
