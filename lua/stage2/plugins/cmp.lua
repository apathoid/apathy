return {
        {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
        lazy = true,
        event = { 'InsertEnter', 'CmdlineEnter' },
        config = function()
            local luasnip = require('luasnip')
            local cmp = require('cmp')

            cmp.setup({
                confirmation = {
                    default_behaviour = cmp.ConfirmBehavior.Replace
                },
                preselect = cmp.PreselectMode.None,
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered()
                },
                formatting = {
                    format = function(entry, vim_item)
                        vim_item.kind = string.format(
                            '%s %s',
                            require('appearance.icons.lspkind').icons[vim_item.kind],
                            vim_item.kind
                        )

                        vim_item.menu = ({
                            nvim_lsp = '[LSP]',
                            nvim_lua = '[Lua]',
                            luasnip = '[Snippet]',
                            buffer = '[BUF]'
                        })[entry.source.name]

                        return vim_item
                    end
                },
                mapping = {
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<Tab>'] = cmp.mapping.select_next_item(),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                    ['<leader><Tab>'] = cmp.mapping(function(fallback)
                        if luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, { 'i' }),
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),
                    ['<CR>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = false
                    }),
                    ['<C-Space>'] = cmp.mapping.complete()
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'path' },
                    { name = 'luasnip' },
                    { name = 'nvim_lua' },
                    { name = 'nvim_lsp_signature_help' }
                }, {
                        {
                            name = 'buffer',
                            option = {
                                get_bufnrs = function()
                                    local bufs = {}
                                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                                        bufs[vim.api.nvim_win_get_buf(win)] = true
                                    end
                                    return vim.tbl_keys(bufs)
                                end
                            }
                        }
                    }
                )
            })

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                  { name = 'path' }
                }, {
                  { name = 'cmdline' }
                })
            })

            cmp.setup.cmdline({ '/', '?' }, {
                sources = {
                    { name = 'buffer' }
                },
                mapping = cmp.mapping.preset.cmdline(),
            })
        end
    },
    {
        'L3MON4D3/LuaSnip',
        lazy = true,
        config = function()
            local luasnip = require('luasnip')

            luasnip.config.set_config {
                history = true,
                updateevents = 'TextChanged,TextChangedI',
            }

            require('luasnip.loaders.from_lua').lazy_load()
            require('luasnip.loaders.from_vscode').lazy_load({ paths = '~/.config/nvim/lua/snippets/vscode' })
            require('luasnip.loaders.from_snipmate').lazy_load()
        end
    }
}
