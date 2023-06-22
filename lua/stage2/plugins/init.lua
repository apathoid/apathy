local M = {}


function M.setup()
    return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'famiu/bufdelete.nvim'
        use 'kyazdani42/nvim-web-devicons'
        use 'lewis6991/impatient.nvim'
        use 'rktjmp/lush.nvim'
        use {
            'rockyzhang24/arctic.nvim',
            requires = 'rktjmp/lush.nvim'
        }

        use 'stevearc/dressing.nvim'

        use {
            'weilbith/nvim-code-action-menu',
            cmd = 'CodeActionMenu'
        }

        use {
            'hoob3rt/lualine.nvim',
            requires = {
                'kyazdani42/nvim-web-devicons',
                opt = true
            },
            config = function()
                require('stage2.plugins.lualine')
            end
        }

        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons'
            },
            config = function()
                require('stage2.plugins.nvimtree')
            end
        }

        use {
            'akinsho/bufferline.nvim',
            branch = 'main',
            requires = {
                'nvim-tree/nvim-web-devicons'
            },
            config = function()
                require('stage2.plugins.bufferline')
            end
        }

        use {
            'folke/trouble.nvim',
            requires = 'kyazdani42/nvim-web-devicons',
            config = function()
                require('stage2.plugins.trouble')
            end
        }

        use {
            'folke/todo-comments.nvim',
            requires = 'nvim-lua/plenary.nvim',
            config = function()
                require('stage2.plugins.todo-comments')
            end
        }

        use {
            'neovim/nvim-lspconfig',
            config = function()
                local lsp = require('stage2.plugins.lsp')

                lsp.setup()
            end
        }

        use {
            'williamboman/mason.nvim',
            requires = {
                'williamboman/mason-lspconfig.nvim',
                'neovim/nvim-lspconfig'
            },
            config = function()
                require('stage2.plugins.mason')
            end
        }

        use {
            'L3MON4D3/LuaSnip',
            config = function()
                require('stage2.plugins.luasnip').setup()
            end
        }

        use {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-nvim-lua',
                'hrsh7th/cmp-cmdline',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-nvim-lsp-signature-help',
                'L3MON4D3/LuaSnip',
                'saadparwaiz1/cmp_luasnip'
            },
            config = function()
                require('stage2.plugins.cmp')
            end
        }

        use {
            'preservim/nerdcommenter',
            config = function()
                require('stage2.plugins.nerdcommenter')
            end
        }

        use {
            'windwp/nvim-autopairs',
            config = function()
                require('stage2.plugins.autopairs')
            end
        }

        use {
            'windwp/nvim-ts-autotag',
            after = 'nvim-treesitter'
        }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            config = function()
                require('stage2.plugins.treesitter')
            end
        }

        use {
            'nvim-treesitter/playground',
            after = 'nvim-treesitter',
            run = ':TSInstall query',
            config = function()
                require('stage2.plugins.treesitter-playground')
            end
        }

        use {
            'nvim-telescope/telescope.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            },
            config = function()
                require('stage2.plugins.telescope')
            end
        }

        use {
            'nvim-telescope/telescope-fzf-native.nvim',
            run = 'make'
        }

        use {
            'lewis6991/gitsigns.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            },
            config = function()
                require('stage2.plugins.gitsigns')
            end
        }

         use {
            'uga-rosa/ccc.nvim',
            config = function()
                require('stage2.plugins.ccc')
            end
        }

        use {
            'akinsho/toggleterm.nvim',
            config = function()
                require('stage2.plugins.toggleterm')
            end
        }

    end)
end


return M
