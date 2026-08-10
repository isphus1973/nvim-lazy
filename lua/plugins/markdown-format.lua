return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      -- separate alias so the fixed --config only applies to markdown,
      -- leaving the shared "prettier" formatter (js/ts/css/...) untouched
      ["prettier-markdown"] = {
        inherit = "prettier",
        prepend_args = { "--config", vim.fn.expand("~/.config/prettier/markdown.json") },
      },
    },
    formatters_by_ft = {
      markdown = { "prettier-markdown", "markdownlint-cli2", "markdown-toc" },
      ["markdown.mdx"] = { "prettier-markdown", "markdownlint-cli2", "markdown-toc" },
    },
  },
}
