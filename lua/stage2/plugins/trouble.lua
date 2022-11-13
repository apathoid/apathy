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
    apth.utils.file_explorer.toggle_explorer(true, function()
        vim.cmd('TroubleToggle workspace_diagnostics')
    end)
end

set_keymap('n', '<leader>v', open_trouble, opts)
