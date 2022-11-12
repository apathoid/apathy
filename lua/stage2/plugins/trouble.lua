local ok, trouble = pcall(require, 'trouble')

if not ok then
    return
end


trouble.setup {
    height = apth.config.split_utility.bottom.height
}


local function open_trouble()
    apth.utils.file_explorer.toggle_explorer(true, function()
        trouble.toggle()
    end)
end


local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>v', open_trouble, opts)
