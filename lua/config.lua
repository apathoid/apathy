local M = {
    editor = {
        get_packpath = function()
            return '~/.local/share/nvim/site'
        end,
        colorscheme = 'vscode'
    },
    file_explorer = {
        filetype = 'NvimTree',
        width = 60,
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
