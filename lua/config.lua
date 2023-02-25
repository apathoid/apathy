local M = {
    editor = {
        get_packpath = function()
            return '~/.local/share/nvim/site'
        end,
        colorscheme = 'arctic'
    },
    file_explorer = {
        filetype = 'neo-tree',
        width = 46,
        position = 'left',
        close_if_last = false
    },
    split_utility = {
        bottom = {
            height = 15
        }
    }
}


return M
