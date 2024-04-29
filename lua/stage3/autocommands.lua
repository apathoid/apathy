local M = {}


M.commands = {
    on_start = {
        type = 'VimEnter',
        opts = {
            nested = true,
            callback = function(data)
                local filetype = vim.bo[data.buf].ft

                local cwd = vim.fn.getcwd()
                local arg_path = vim.fn.argv()[1] or ''
                local path = vim.fn.expand(cwd..'/'..arg_path)

                -- if path to a file is given, strip filename from the path and get the containing dir
                local dir_path = apth.utils.methods.basedir({ path = path })

                -- change to the directory
                vim.cmd.cd(dir_path)

                -- if opened file type allows displaying a file explorer
                if not vim.tbl_contains(vim.tbl_values(apth.enum.ft.git_window), filetype) then
                    -- open it
                    -- schedule it so that it will open after any SessionLoad event (and doesn't crash)
                    vim.schedule(function()
                        apth.utils.file_explorer.open_explorer({ path = dir_path, focus = false })
                    end)
                end
            end
        }
    },
    on_session_load = {
        type = 'SessionLoadPost',
        opts = {
            nested = true,
            callback = function()
                -- open the file explorer
                apth.utils.file_explorer.open_explorer({ path = './', focus = false })
            end
        }
    },
    highlight_yank = {
        type = 'TextYankPost',
        opts = {
            callback = function()
                -- highlight yanked text
                vim.highlight.on_yank({ higroup='YankHighlight', timeout=300 })
            end
        }
    }
}


function M.setup()
    for _, command in pairs(M.commands) do
        if not command.disabled then
            vim.api.nvim_create_autocmd({ command.type }, command.opts)
        end
    end
end


return M
