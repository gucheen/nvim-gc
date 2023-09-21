require('lazy').setup({
    {'jdhao/better-escape.vim', event = 'InsertEnter'},
    {'neoclide/coc.nvim', branch = 'release'},
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
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
    {
        'terrortylor/nvim-comment',
        config = function()
            require('nvim_comment').setup()
        end,
    },
    'tanvirtin/monokai.nvim',
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
})
