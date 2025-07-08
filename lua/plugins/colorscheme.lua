return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        keywords = { italic = true, bold = true },
        functions = { italic = true },
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
