require('lazy').setup({
    {
        'numToStr/Comment.nvim',
        opts = {
        },
        lazy = false,
        config = function()
            require('Comment').setup()
        end
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {'jdhao/better-escape.vim', event = 'InsertEnter'},
    {
        'neoclide/coc.nvim',
        branch = 'release',
        config = function()
            require('plugin-configs.coc')
        end
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require'nvim-tree'.setup {}
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        init = function()
            require('plugin-configs.blankline')
        end
    },
    {
        'windwp/windline.nvim',
        dependencies = 'lewis6991/gitsigns.nvim',
        config = function()
            require('plugin-configs.statusline')
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    'tanvirtin/monokai.nvim',
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
})
