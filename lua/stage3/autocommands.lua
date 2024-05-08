local M = {}


M.commands = {
    on_start = {
        type = 'VimEnter',
        opts = {
            nested = true,
            callback = function(data)
                local filetype = apth.utils.methods.get_buf_opts({ id = data.buf })
                local buf_name = vim.api.nvim_buf_get_name(0)

                local arg_path = vim.fn.argv()[1] or ''
                local path = apth.utils.methods.get_cd_path({ to = arg_path })
                local is_dir = vim.fn.isdirectory(path) == 1

                -- get path to the dir that contains opened file (or to the opened dir itself)
                local dir_path = apth.utils.methods.get_base_dir({ path = path })

                -- if neovim is opened with an argument and that argument is a path pointing to a dir,
                -- it will open a new buffer named as the last segment of the path (the last directory's name).
                -- if we close this buffer, [No Name] buffer will be only left so that any new buffer can replace it,
                -- and there will be no need to close it manualy 
                if is_dir and buf_name == dir_path then
                    vim.cmd('bd')
                end

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
