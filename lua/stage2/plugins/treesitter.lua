return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'windwp/nvim-ts-autotag'
    },
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    lazy = true,
    event = 'BufReadPre',
    opts = {
        ensure_installed = {
            'bash',
            'c',
            'comment',
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
            'regex',
            'scss',
            'toml',
            'tsx',
            'typescript',
            'vimdoc',
            'vue',
            'yaml'
        },
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
        autopairs = {
            enable = false
        },
        autotag = {
            enable = true
        },
        indent = {
            enable = false,
            disable = { 'yaml', 'python' }
        },
        -- textobjects = {
        --     swap = {
        --         enable = false
        --     },
        --     select = {
        --         enable = false
        --     }
        -- },
        -- textsubjects = {
        --     enable = false,
        --     keymaps = { ['.'] = 'textsubjects-smart', [';'] = 'textsubjects-big' }
        -- }
    }
}
