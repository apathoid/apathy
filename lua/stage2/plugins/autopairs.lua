return {
    'windwp/nvim-autopairs',
    lazy = true,
    event = 'InsertEnter',
    opts = {
        check_ts = true,
        ts_config = {
            lua = { 'string', 'source' },
            javascript = { 'string', 'template_string' }
        },
        fast_wrap = {
            map = '<M-e>',
            chars = { '{', '[', '(', '"', "'" },
            pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
            end_key = '$',
            keys = 'qwertyuiopzxcvbnmasdfghjkl',
            check_comma = true,
            hightlight = 'Search'
        },
        disable_filetype = { 'TelescopePrompt' },
        enable_moveright = true,
        enable_afterquote = true
    }
}
