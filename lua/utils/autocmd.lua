local M = {}


function M.clear_augroup(name)
    vim.schedule(function()
        pcall(function()
            vim.api.nvim_clear_autocmds { group = name }
        end)
    end)
end


return M
