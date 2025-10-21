return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			contrast = "hard", -- can be "hard", "soft" or empty string
			transparent_mode = true,
		})
		vim.cmd.colorscheme("gruvbox")
	end,
}
