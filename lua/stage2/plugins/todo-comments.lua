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
    apth.utils.file_explorer.toggle_explorer(true, function()
        vim.cmd('TroubleToggle todo')
    end)
end

set_keymap('n', '<leader>b', open_todos, opts)
