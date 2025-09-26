return {
	'saghen/blink.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	opts = {
		keymap = { preset = 'ender' },
		appearance = {
			nerd_font_varient = 'mono',
		},
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = 'prefer_rust_with_warning' },
	},
	lazy = false,
}
