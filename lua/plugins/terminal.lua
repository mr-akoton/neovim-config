-- -------------------------------- Packages -------------------------------- --
vim.pack.add({
	{ src = 'https://github.com/akinsho/toggleterm.nvim' }
})


require("toggleterm").setup({
	open_mapping = [[<C-\>]],

	direction = 'float',
	float_opts = {
		border = 'curved',
		title_pos = 'center'
	}
})


local opts = { buffer = 0 }

vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
