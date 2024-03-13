local M = {}


M.commands = {
    cd = {
        type = 'VimEnter',
        callback = function()
            -- change to the directory
            vim.cmd.cd(vim.fn.getcwd())
        end
    },
    highlight_yank = {
        type = 'TextYankPost',
        callback = function()
            -- highlight yanked text
            vim.highlight.on_yank({ higroup="YankHighlight", timeout=300 })
        end
    }
}


function M.setup()
    for _, command in pairs(M.commands) do
        vim.api.nvim_create_autocmd({ command.type }, { callback = command.callback })
    end
end


return M
