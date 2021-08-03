-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

require('settings')
require('maps')
require('plugins')
require('colorschema')
