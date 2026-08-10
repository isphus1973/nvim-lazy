-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Obsidian vault notes: let obsidian.nvim render checkboxes/bullets/wikilinks
-- itself, and switch off render-markdown.nvim just for these buffers so the
-- two don't both decorate the same markers. ObsidianNoteEnter only fires once
-- obsidian.nvim has confirmed the buffer belongs to a configured workspace.
vim.api.nvim_create_autocmd("User", {
  pattern = "ObsidianNoteEnter",
  group = vim.api.nvim_create_augroup("render_markdown_vault_disable", { clear = true }),
  callback = function()
    local ok, render_markdown = pcall(require, "render-markdown")
    if ok then
      render_markdown.buf_disable()
    end
  end,
})
