return {
	'nvim-tree/nvim-tree.lua',
	lazy = false,
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('nvim-tree').setup({
			view = {
				side = 'right',
				width = 30,
			},
		})
	end
}
