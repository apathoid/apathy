return {
    {
        'numToStr/Comment.nvim',
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        },
        lazy = true,
        keys = {
            { 'gcc', desc = 'Comment a string', silent = true },
            { 'gbc', desc = 'Comment a block', silent = true },
            { 'gc', desc = 'Comment a string', mode = 'v', silent = true },
            { 'gb', desc = 'Comment a string', mode = 'v', silent = true }
        },
        config = function()
            local comment = require('Comment')

            comment.setup({
                padding = true,
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            })
        end
    },
    {
        'JoosepAlviste/nvim-ts-context-commentstring',
        lazy = true,
        config = function()
            vim.g.skip_ts_context_commentstring_module = true

            local ts_comment = require('ts_context_commentstring')

            ts_comment.setup({
                enable_autocmd = false
            })
        end
    }
}
