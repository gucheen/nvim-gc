local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})

local options = { noremap = true }

map('n', '<leader><esc>', ':nohlsearch<cr>', options)

map('n', ';', ':', options)

map('n', '<C-n>', ':NvimTreeToggle<CR>', options)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', options)
-- map('n', '<leader>n', ':NvimTreeFindFile<CR>', options)

-- bufferline tab stuff
map('n', '<S-t>', ':enew<CR>', options) -- new buffer
map('n', '<S-x>', ':bd!<CR>', options) -- close tab

-- move between tabs
map('n', '<TAB>', ':BufferLineCycleNext<CR>', options)
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', options)

map('n', '<F2>', ':set number! relativenumber!<CR>', options)

vim.g.better_escape_shortcut = 'kj'
