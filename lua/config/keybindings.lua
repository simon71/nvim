 local map = vim.api.nvim_set_keymap

-- NvimTree
map('n', '<leader>e', '<cmd>NvimTreeFindFile<cr>', {noremap = true, silent = false})
map('n', '<leader>c', '<cmd>NvimTreeToggle<cr>', {noremap = true, silent = false})

-- Press ENTER to insert a blank line
map('n', '<Enter>', 'o<esc>', {noremap = true, silent = true})

-- Easier Navigation
map('n', '<c-k>', ':wincmd k<CR>', {noremap = true, silent = true})
map('n', '<c-j>', ':wincmd j<CR>', {noremap = true, silent = true})
map('n', '<c-l>', ':wincmd l<CR>', {noremap = true, silent = true})
map('n', '<c-h>', ':wincmd h<CR>', {noremap = true, silent = true})

-- Toggleterm
map('t', '<c-h>', '<c-\\><c-N><c-w>h', {noremap = true, silent = true})
map('t', '<c-j>', '<c-\\><c-N><c-w>j', {noremap = true, silent = true})
map('t', '<c-l>', '<c-\\><c-N><c-w>l', {noremap = true, silent = true})
map('t', '<c-k>', '<c-\\><c-N><c-w>k', {noremap = true, silent = true})

-- Clear nohlsearch
map('n', '<leader><leader>', ':nohlsearch<CR>', {noremap = true, silent = true})

