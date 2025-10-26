-- -------------------------------- Packages -------------------------------- --
vim.pack.add({
	{ src = 'https://github.com/Saghen/blink.cmp', version = vim.version.range("^1") },
	{ src = 'https://github.com/rafamadriz/friendly-snippets' },
})


require("blink.cmp").setup({
	fuzzy = { implementation = 'prefer_rust_with_warning' },
	signature = { enabled = true },
	keymap = {
		preset = "default"
	},
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		}
	},
	cmdline = {
		keymap = {
			preset = 'inherit',
			['<CR>'] = { 'accept_and_enter', 'fallback' },
		},
	},
	sources = { default = { "lsp" } }
})
