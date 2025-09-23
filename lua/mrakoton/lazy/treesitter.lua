return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_isntalled = {
                "c", "cpp", "make", "bash",
                "python", "typescript", "java", "dockerfile",
                "html", "css", "javascript",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
