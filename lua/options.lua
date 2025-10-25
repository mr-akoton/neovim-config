local opt = vim.opt

opt.guicursor = "i:block"
opt.signcolumn = "yes:1"
opt.termguicolors = true
opt.autoindent = true
opt.expandtab = false
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.cursorline = true
opt.scrolloff = 8
opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
opt.undofile = true
opt.completeopt = { "menuone", "popup", "noinsert" }
opt.winborder = "rounded"
opt.hlsearch = false
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

