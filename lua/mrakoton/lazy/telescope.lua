return {
    'nvim-telescope/telescope.nvim',
    dependecies = { 'nvim-lua/plenary.nvim', 'sharkdp/fd' },
    config = function()
        require("telescope").setup()
    end,
}
