-- <leader>e: open the explorer if closed, focus it if open elsewhere,
-- and close it if you're already focused inside it.
return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>e",
      function()
        local explorer = Snacks.picker.get({ source = "explorer" })[1]
        if not explorer then
          Snacks.explorer({ cwd = LazyVim.root() })
        elseif explorer:is_focused() then
          explorer:close()
        else
          explorer:focus()
        end
      end,
      desc = "Explorer Snacks (focus/open/close)",
    },
  },
}
