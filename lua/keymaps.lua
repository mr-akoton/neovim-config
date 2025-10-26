local map = vim.keymap.set

-- ------------------------------- Map leader ------------------------------- --
vim.g.mapleader = " "


-- keymap('n', '<leader>so', '<CMD>Ex<CR>', { desc = "File Explorer" })
map('n', '-', '<CMD>Oil<CR>', { desc = "Open parent directory" })

map('n', '<leader>w', '<CMD>w!<CR>', { desc = "Save current file", silent = true })
map('n', '<leader>q', '<CMD>q<CR>', { desc = "Quit Neovim", silent = true })
map('n', '<leader>Q', '<CMD>q!<CR>', { desc = "Quit Force Neovim", silent = true })

map('n', '<leader>|', '<CMD>vsplit<CR>', { desc = "Split window verticaly", silent = true })
map('n', '<leader>_', '<CMD>split<CR>', { desc = "Split window horizontaly", silent = true })

map('n', '<A-j>', '<CMD>move .+1<CR>==', { desc = "Move line down", silent = true })
map('n', '<A-k>', '<CMD>move .-2<CR>==', { desc = "Move line up", silent = true })
map('v', '<A-j>', '<CMD>move \'>+1<CR>gv=gv', { desc = "Move selected lines down", silent = true })
map('v', '<A-k>', '<CMD>move \'<-2<CR>gv=gv', { desc = "Move selected lines up", silent = true })

map('n', '<leader>pu', '<CMD>lua vim.pack.update()<CR>', { desc = "Pack update" })

-- ------------------------ Search and replace word ------------------------- --
map('n', '<leader>rw', [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { desc = "Replace word under cursor (file)" })
map('n', '<leader>rW', [[:%s/\V<C-r><C-a>//g<Left><Left>]], { desc = "Replace WORD under cursor (file)" })
map('x', '<leader>rw', [["hy:%s/<C-r>h//g<Left><Left>]], { desc = "Replace selection (file)" })
map('n', '<leader>rc', [[:%s/\<<C-r><C-w>\>//gc<Left><Left><Left>]], { desc = "Replace word with confirmation" })
map('n', '<Esc><Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear search highlight" })
map('n', '<leader>rp', function()
	local word = vim.fn.expand('<cword>')
	local replace = vim.fn.input('Replace "' .. word .. '" with: ')
	if replace ~= '' then
		vim.cmd('grep -r "' .. word .. '" .')
		vim.cmd('cfdo %s/' .. word .. '/' .. replace .. '/g | update')
	end
end, { desc = "Replace in project (quickfix)" })

-- --------------------------- Buffer navigation ---------------------------- --
map('n', '<leader>bn', '<cmd>bnext<CR>', { desc = "Next buffer" })
map('n', '<leader>bp', '<cmd>bprevious<CR>', { desc = "Previous buffer" })
map('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = "Delete buffer" })
map('n', '<leader>bD', '<cmd>bdelete!<CR>', { desc = "Force delete buffer" })
map('n', '<leader>bl', '<cmd>buffers<CR>', { desc = "List buffers" })

-- --------------------- Editor navigation and helpers ---------------------- --
map('n', '<leader>d', 'yyp', { desc = "Duplicate line" })
map('v', '<leader>d', 'y`>p', { desc = "Duplicate selection" })
map('n', 'gJ', 'J', { desc = "Join lines with space" })
map('n', 'J', 'mzJ`z', { desc = "Join lines, keep cursor" })
map('v', '<', '<gv', { desc = "Indent left" })
map('v', '>', '>gv', { desc = "Indent right" })
map({'n', 'v'}, 'H', '^', { desc = "Start of line" })
map({'n', 'v'}, 'L', '$', { desc = "End of line" })
map('x', '<leader>p', '"_dP', { desc = "Paste without yanking" })
map({'n', 'v'}, '<leader>x', '"_d', { desc = "Delete without yanking" })
