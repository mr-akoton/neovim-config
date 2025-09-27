return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	event = { 'BufReadPre', 'BufNewFile' },
	version = '1.*',
	lazy = false,
	opts = {
		keymap = { preset = 'super-tab' },
		appearance = {
			use_nvim_cmp_as_default = true,
		},
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = 'prefer_rust_with_warning' },
	}
}
