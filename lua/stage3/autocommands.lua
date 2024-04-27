local M = {}


M.commands = {
    on_start = {
        type = 'VimEnter',
        callback = function(data)
            local filetype = vim.bo[data.buf].ft

            -- change to the directory
            vim.cmd.cd(vim.fn.getcwd())

            local IGNORED_FT = {
                'gitcommit',
                'gitrebase'
            }

            -- if opened file type allows displaying a file explorer
            if not vim.tbl_contains(IGNORED_FT, filetype) then
                -- open it
                apth.utils.file_explorer.open_explorer({ focus = false })
            end
        end
    },
    on_session_load = {
        type = 'SessionLoadPost',
        callback = function()
            -- open the file explorer
            apth.utils.file_explorer.open_explorer({ path = './', focus = false })
        end
    },
    highlight_yank = {
        type = 'TextYankPost',
        callback = function()
            -- highlight yanked text
            vim.highlight.on_yank({ higroup='YankHighlight', timeout=300 })
        end
    }
}


function M.setup()
    for _, command in pairs(M.commands) do
        if not command.disabled then
            vim.api.nvim_create_autocmd({ command.type }, { callback = command.callback })
        end
    end
end


return M
