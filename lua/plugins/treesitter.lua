return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {{ 'habamax/vim-godot', event = 'VimEnter' }},
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
				'gdscript', 'godot_resource', 'gdshader',
			},
			auto_install = true,
			highkight = { enable = true },
			indent = { enable = false }
		})
	end,
}
