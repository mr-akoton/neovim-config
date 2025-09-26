local map = vim.keymap.set

-- Map Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Invert j and k direction
map('n', 'j', 'k', { noremap = true })
map('n', 'k', 'j', { noremap = true })

map('v', 'j', 'k', { noremap = true })
map('v', 'k', 'j', { noremap = true })

map('o', 'j', 'k', { noremap = true })
map('n', 'k', 'j', { noremap = true })


-- Normal Mode remap
map('n', '<leader>pv', vim.cmd.Ex, { desc = "Open default file explorer" })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

map('n', '<C-h>', '<C-w><C-h>', { desc = "Move focus to the left window" })
map('n', '<C-l>', '<C-w><C-l>', { desc = "Move focus to the right window", remap = true })
map('n', '<C-j>', '<C-w><C-j>', { desc = "Move focus to the upper window" })
map('n', '<C-k>', '<C-w><C-k>', { desc = "Move focus to the lower window" })

map('n', '<leader>w', ':w<CR>', { desc = "Save file", remap = true })
map('n', '<leader>q', ':q<CR>', { desc = "Quit Neovim", remap = true })
map('n', '<C-a>', 'gg<S-v>G', { desc = "Select all", noremap = true })

map('n', 'te', ':tabedit<CR>', { desc = "New tab" })

map('n', '<leader>sh', ':split<Return><C-w>w', { desc = "Split horizontaly", noremap = true })
map('n', '<leader>sv', ':vsplit<Return><C-w>w', { desc = "Split Verticaly", noremap = true })

map('n', '<Tab>', ':BufferNext<CR>', { desc = "Move to next tab", noremap = true })
map('n', '<S-Tab>', ':BufferPrevious<CR>', { desc = "Move to previous tab", noremap = true })
map('n', '<leader>bx', 'BufferClose<CR>', { desc = 'Close tab', noremap = true })
map('n', '<leader>bp', 'BufferPin<CR>', { desc = 'Pin tab', noremap = true })


-- Visual Mode remap
map('v', '<', '<gv', { desc = "Indenting to left", silent = true, noremap = true })
map('v', '>', '>gv', { desc = "Indenting to right", silent = true, noremap = true })


-- Disable Keymap
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use j to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use k to move!!"<CR>')
