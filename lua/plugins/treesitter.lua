return {
	'nvim-treesitter/nvim-treesitter',
	event = { 'BufReadPre', 'BufNewFile' },
	build = ":TSUpdate",
	config = function()
		local config = require('nvim-treesitter.configs')
		config.setup({
			ensure_installed = {
				'c', 'cpp',
				'lua',
				'vim', 'bash',
				'python', 'java',
				'javascript', 'typescript',
				'html', 'css',
				'dockerfile',
			},
			auto_install = true,
			highkight = { enable = true },
			indent = { enable = true }
		})
	end,
}
