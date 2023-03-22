local ok, treesitter = pcall(require, 'nvim-treesitter.configs')

if not ok then
    return
end


treesitter.setup {
    ensure_installed = {
        'bash',
        'c',
        'cpp',
        'css',
        'html',
        'javascript',
        'json',
        'json5',
        'jsonc',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'scss',
        'toml',
        'tsx',
        'typescript',
        'vue',
        'yaml'
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    autopairs = {
        enable = true
    },
    autotag = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000
    },
    context_commentstring = {
        enable = true
    },
    indent = {
        enable = true,
        disable = { 'yaml', 'python' }
    },
    textobjects = {
        swap = {
            enable = false
        },
        select = {
            enable = false
        }
    },
    textsubjects = {
        enable = false,
        keymaps = { ['.'] = 'textsubjects-smart', [';'] = 'textsubjects-big' }
    }
}
