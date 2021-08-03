-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use {
        'wbthomason/packer.nvim',
        opt = true
    }

    use {
        'jdhao/better-escape.vim',
        event = 'InsertEnter'
    }

    -- use 'rstacruz/vim-closer'

    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    use {
        'akinsho/nvim-bufferline.lua',
        config = function()
            require 'buffer'
        end,
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        setup = function()
            require('blankline')
        end
    }

    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function()
            require 'statusline'
        end,
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'ayu-theme/ayu-vim'

end)
