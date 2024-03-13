local ok, trouble = pcall(require, 'trouble')

if not ok then
    return
end


trouble.setup {
    height = apth.config.split_utility.bottom.height
}

local set_keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local function open_trouble()
    vim.cmd('TroubleToggle workspace_diagnostics')
    apth.utils.file_explorer.toggle_explorer({ reopen = true, focus = false })
end

set_keymap('n', '<leader>v', open_trouble, opts)
