local utils = require('utils')
local cmd = vim.cmd
utils.opt('o', 'termguicolors', true)
vim.g.ayucolor="dark" 
cmd 'colorscheme ayu'
