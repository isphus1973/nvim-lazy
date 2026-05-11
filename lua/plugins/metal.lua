return {
  dir = "/Users/arthurscardua/Documents/studies/metals/metal.nvim",
  ft = "metal",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "mfussenegger/nvim-lint",
    "stevearc/conform.nvim",
  },
  config = function()
    require("metal").setup({})
  end,
}
