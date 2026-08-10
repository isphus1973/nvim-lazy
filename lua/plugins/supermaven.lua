return {
  "supermaven-inc/supermaven-nvim",
  opts = {
    disable_inline_completion = true,
  },
  keys = {
    {
      "<leader>at",
      function()
        local api = require("supermaven-nvim.api")
        api.toggle()
        if api.is_running() then
          vim.notify("Supermaven Started")
        else
          vim.notify("Supermaven Stopped")
        end
      end,
      desc = "Toggle supermaven",
    },
  },
}
