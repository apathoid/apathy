local ok, treesitter_refactor = pcall(require, 'nvim-treesitter.configs')

if not ok then
    return
end


treesitter_refactor.setup {
    refactor = {
        highlight_definitions = {
            enable = true,
            clear_on_cursor_move = false
        },
        highlight_current_scope = { enable = true }
    }
}
