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
		dependencies = { 'saghen/blink.cmp' },
		config = function()
			vim.lsp.config('lua_ls', {
				 settings = {
					Lua = {
						runtime = { version = 'LuaJIT' },
						diagnostics = {
							globals = { 'vim', 'require' },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
						telemetry = { enable = false },
					},
				},
			})

			vim.lsp.enable('lua_ls')
			
			local map = vim.keymap.set

			map('n', 'K', vim.lsp.buf.hover, {})
			map('n', '<leader>gD', vim.lsp.buf.declaration, { desc = "Declaration" })
			map('n', '<leader>gd', vim.lsp.buf.definition, { desc = "Definitions" })
			map('n', '<leader>gr', vim.lsp.buf.references, { desc = "References" })
			map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
		end
	}
} 

