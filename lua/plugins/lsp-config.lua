return {
	{
		'mason-org/mason-lspconfig.nvim',
		opts = {
			ensure_installed = {
				'bashls', 'lua_ls', 'cssls',
				'clangd', 'pyright', 'jdtls',
				'dockerls', 'autotools_ls'
			},
			auto_install = true,
		},
		dependencies = {
			{ 'mason-org/mason.nvim', opts = {} },
			'neovim/nvim-lspconfig'
		}
	},

	{
		'neovim/nvim-lspconfig',
		event = { 'BufReadPre', 'BufNewFile' },
		dependencies = {
			'saghen/blink.cmp',
			'WhoIsSethDaniel/mason-tool-installer.nvim',
			{ 'j-hui/fidget.nvim', opts = { } }
		},
		config = function()
			local servers = {
				bashls = {},
				cssls = {},
				clangd = {},
				pyright = {},
				jdtls = {},
				dockerls = {},
				autotools_ls = {},
				gdscript = {},
				lua_ls = {
					Lua = {
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			}

			for server, opt in pairs(servers) do
				vim.lsp.config(server, opt)
				vim.lsp.enable(server)
			end

			local map = vim.keymap.set
			map('n', 'K', vim.lsp.buf.hover, {})
			map('n', '<leader>gD', vim.lsp.buf.declaration, { desc = "Declaration" })
			map('n', '<leader>gd', vim.lsp.buf.definition, { desc = "Definitions" })
			map('n', '<leader>gr', vim.lsp.buf.references, { desc = "References" })
			map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
		end
	}
}
