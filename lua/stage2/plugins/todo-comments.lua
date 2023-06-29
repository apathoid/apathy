local ok, tc = pcall(require, 'todo-comments')

if not ok then
    return
end


tc.setup({
    signs = false,
    highlight = {
        before = '',
        after = '',
        keyword = 'wide'
    }
})


local set_keymap = vim.keymap.set
local opts = { silent = true, noremap = true }

local function open_todos()
    vim.cmd('TroubleToggle todo')
    apth.utils.file_explorer.toggle_explorer(true)
end

set_keymap('n', '<leader>b', open_todos, opts)
