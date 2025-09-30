return {
	{
		'folke/lazydev.nvim',
		ft = 'lua', -- only load on lua files
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},

	{ -- optional blink completion source for require statements and module annotations
		'saghen/blink.cmp',
		dependencies = { 'rafamadriz/friendly-snippets' },
		version = '1.*',
		lazy = false,

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = { preset = 'super-tab' },
			completion = { documentation = { auto_show = false, auto_show_delay_ms = 500 } },
			sources = {
				-- add lazydev to your completion providers
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = 'LazyDev',
						module = 'lazydev.integrations.blink',
						-- make lazydev completions top priority (see `:h blink.cmp`)
						score_offset = 100,
					},
				},
			},
			fuzzy = { implementation = 'prefer_rust_with_warning' }
		},
	}
}
