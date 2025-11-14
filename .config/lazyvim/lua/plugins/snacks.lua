return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      hidden = true,
      ignored = true,
      exclude = { ".venv", ".git", "__pycache__" },
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
        -- buffers = {
        --   hidden = true,
        --   ignored = true,
        -- },
      },
    },
  },
}
