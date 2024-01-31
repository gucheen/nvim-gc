require('lazy').setup({
    {
        'numToStr/Comment.nvim',
        opts = {
        },
        lazy = false,
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
    {'neoclide/coc.nvim', branch = 'release'},
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        init = function()
            require('blankline')
        end
    },
    {
        'windwp/windline.nvim',
        dependencies = 'lewis6991/gitsigns.nvim',
        config = function()
            require('wlsample.bubble')
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
    }
})
