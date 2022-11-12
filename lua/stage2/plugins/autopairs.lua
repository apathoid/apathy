local ok, autopairs = pcall(require, 'nvim-autopairs')

if not ok then
   return
end


local set_keymap = vim.keymap.set

autopairs.setup {
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


local opts = { expr = true, noremap = true }

set_keymap('i', '<CR>', 'v:lua.MPairs.autopairs_cr()', opts)
