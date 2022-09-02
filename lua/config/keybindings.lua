 local map = vim.api.nvim_set_keymap

-- NvimTree
map('n', '<leader>e', '<cmd>NvimTreeFindFile<cr>', {noremap = true, silent = false})

-- Press ENTER to insert a blank line
map('n', '<Enter>', 'o<esc>', {noremap = true, silent = true})

-- Easier Navigation
map('n', '<c-k>', ':wincmd k<CR>', {noremap = true, silent = true})
map('n', '<c-j>', ':wincmd j<CR>', {noremap = true, silent = true})
map('n', '<c-l>', ':wincmd l<CR>', {noremap = true, silent = true})
map('n', '<c-h>', ':wincmd h<CR>', {noremap = true, silent = true})

-- Toggleterm
--  Moving in and out of the terminal
map('t', '<c-h>', '<c-\\><c-N><c-w>h', {noremap = true, silent = true})
map('t', '<c-j>', '<c-\\><c-N><c-w>j', {noremap = true, silent = true})
map('t', '<c-l>', '<c-\\><c-N><c-w>l', {noremap = true, silent = true})
map('t', '<c-k>', '<c-\\><c-N><c-w>k', {noremap = true, silent = true})

-- Clear nohlsearch
map('n', '<leader><leader>', ':nohlsearch<CR>', {noremap = true, silent = true})

-- Telescope
map('n', '<leader>f', '<cmd>Telescope find_files<cr>', {noremap = true, silent = false})

-- Cheatsheet
map('n', '<leader>c', '<cmd>Cheatsheet<cr>', {noremap = true, silent = false})
