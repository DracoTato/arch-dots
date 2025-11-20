return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  opts = {
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name)
        local always_hidden = { "..", ".venv", ".git" }
        return vim.tbl_contains(always_hidden, name)
      end,
    },
    float = {},
  },
}
