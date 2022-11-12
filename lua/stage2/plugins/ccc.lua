local ok, ccc = pcall(require, 'ccc')

if not ok then
    return
end


ccc.setup({
    highlighter = {
        auto_enable = true
    }
})


local set_keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

set_keymap('n', '<leader>cv', ':CccConvert<CR>', opts)
set_keymap('n', '<leader>cp', ':CccPick<CR>', opts)
