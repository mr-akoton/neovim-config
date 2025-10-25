-- Packages ----------------------------------------------------------------- --
vim.pack.add({
	{ src = 'https://github.com/ellisonleao/gruvbox.nvim' },
	{ src = 'https://github.com/nvim-lualine/lualine.nvim' },
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' },
	{ src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim' },
})

require("lualine").setup({})
require("nvim-web-devicons").setup()
require("tiny-inline-diagnostic").setup({
	priority = 1000,
	preset = 'ghost',
	transparent_bg = true,
})

require("gruvbox").setup({
	terminal_color = true,
	contrast = "hard",
	transparent_mode = true,
})

vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "NONE" })
