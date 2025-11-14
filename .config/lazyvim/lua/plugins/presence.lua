return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  opts = {
    display = {
      theme = "catppuccin",
      flavor = "accent",
      swap_fields = true,
    },
    advanced = {
      discord = {
        reconnect = {
          enabled = true,
        },
      },
    },
  },
}
