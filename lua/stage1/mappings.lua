local M = {}


local set_keymap = vim.keymap.set

function M.setup()
    local opts = { noremap = true, silent = true }

    -- Copy to clipboard
    set_keymap('v', '<leader>y', '"+y', opts)
    set_keymap('n', '<leader>y', '"+yg_', opts)

    -- Paste from clipboard
    set_keymap('n', '<leader>p', '"+p', opts)
    set_keymap('v', '<leader>p', '"+p', opts)

    -- Close tab
    set_keymap('n', '<C-A-w>', ':tabclose<CR>', opts)
    -- Go to the left tab
    set_keymap('n', '<C-A-,>', ':tabprevious<CR>', opts)
    -- Go to the right tab
    set_keymap('n', '<C-A-.>', ':tabnext<CR>', opts)
    -- Select previous window
    set_keymap('n', '<C-Tab>', ':winc p<CR>', opts)

    -- Move between windows
    set_keymap('n', '<A-h>', '<c-w>h', opts)
    set_keymap('n', '<A-j>', '<c-w>j', opts)
    set_keymap('n', '<A-k>', '<c-w>k', opts)
    set_keymap('n', '<A-l>', '<c-w>l', opts)

    -- Resize windows
    set_keymap('n', '<C-Up>', ':resize +2<CR>', opts)
    set_keymap('n', '<C-Down>', ':resize -2<CR>', opts)
    set_keymap('n', '<C-Left>', ':vertical resize +2<CR>', opts)
    set_keymap('n', '<C-Right>', ':vertical resize -2<CR>', opts)

    -- Move code blocks

    --- Move vertically
    set_keymap('n', '<C-j>', ':m .+1<CR>==', opts)
    set_keymap('n', '<C-k>', ':m .-2<CR>==', opts)
    set_keymap('x', '<C-j>', ":m '>+1<CR>gv-gv", opts)
    set_keymap('x', '<C-k>', ":m '<-2<CR>gv-gv", opts)

    --- Move horizontally
    set_keymap('n', '<','<<', opts)
    set_keymap('n', '>','>>', opts)
    set_keymap('v', '<','<gv', opts)
    set_keymap('v', '>','>gv', opts)
end


return M
