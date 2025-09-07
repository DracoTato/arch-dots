return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      close_if_last_window = true,

      filesystem = {
        use_libuv_file_watcher = true,
      },
      window = {
        mappings = {
          ["l"] = "toggle_node",
          ["L"] = "focus_preview",
        }
      }
    }
  }
}
