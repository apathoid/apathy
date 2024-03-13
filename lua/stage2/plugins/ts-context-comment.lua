local ok, ts_comment = pcall(require, 'ts_context_commentstring')

if not ok then
    return
end


vim.g.skip_ts_context_commentstring_module = true

ts_comment.setup({
    enable_autocmd = false
})
