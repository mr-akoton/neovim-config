-- -------------------------------- Packages -------------------------------- --
vim.pack.add({
	{ src = 'https://github.com/ellisonleao/gruvbox.nvim' },
	{ src = 'https://github.com/nvim-lualine/lualine.nvim' },
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' },
	{ src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim' },
	{ src = 'https://github.com/Layxe/comment-divider.nvim' }
})

require("lualine").setup({})
require("nvim-web-devicons").setup()
require("tiny-inline-diagnostic").setup({
	priority = 1000,
	preset = 'ghost',
	transparent_bg = true,
})

-- --------------------- Comment Divider Configuration ---------------------- --
local comment_divider = require("comment-divider")

comment_divider.setup({
	c = { "/*", "*/" }, cpp = { "/*", "*/" },
	h = { "/*", "*/" }, hpp = { "/*", "*/" },
	lua = { "--", "--" },
})

local function create_section_divider()
	comment_divider.insert_divider("=", 80)
end

local function create_section_divider_centered_text()
	comment_divider.insert_divider_centered_text("-", 80)
end

vim.keymap.set('n', "<A-d>", create_section_divider,
	{ desc = "Insert divider" })
vim.keymap.set('n', "<A-x>", create_section_divider_centered_text,
	{ desc = "Insert divider centered" })

-- -------------------------- Theme Configuration --------------------------- --
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
