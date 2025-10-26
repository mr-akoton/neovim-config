-- -------------------------------- Packages -------------------------------- --
vim.pack.add({
	{ src = 'https://github.com/stevearc/oil.nvim' },
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	{ src = 'https://github.com/vieitesss/miniharp.nvim' }
})


require("oil").setup()
require("telescope").setup()

-- ------------------------------- Telescope -------------------------------- --
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- -------------------------------- Miniharp -------------------------------- --
local miniharp = require('miniharp')

miniharp.setup()
vim.keymap.set('n', '<leader>m', require('miniharp').toggle_file, { desc = 'MiniHarp toggle file mark' })
vim.keymap.set('n', '<C-n>',     require('miniharp').next,        { desc = 'MiniHarp next file mark' })
vim.keymap.set('n', '<C-p>',     require('miniharp').prev,        { desc = 'MiniHarp prev file mark' })
vim.keymap.set('n', '<leader>l', require('miniharp').show_list,   { desc = 'MiniHarp list marks' })
