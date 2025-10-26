-- -------------------------------- Packages -------------------------------- --
vim.pack.add({
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
})


require("nvim-treesitter.configs").setup({
	modules = {},
	sync_install = true,
	ignore_install = {},
	ensure_installed = {
		'c',
		'cpp',
		'css',
		'html',
		'javascript',
		'lua',
		'markdown',
		'python',
		'typescript',
		'tsx',
		'vim',
	},
	auto_install = true,
	highlight = { enable = true }
})
