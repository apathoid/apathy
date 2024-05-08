local M = {
    editor = {
        get_packpath = function()
            return '~/.local/share/nvim/site'
        end,
        colorscheme = 'vscode-modern'
    },
    file_explorer = {
        width = 60,
        filetype = apth.enum.ft.file_explorer.neotree,
        position = 'left',
        close_if_last = false
    },
    split_utility = {
        bottom = {
            height = 20
        }
    }
}


return M
