local wk = require("which-key")
wk.add({
  { "<leader>f", group = "Telescope" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File"},
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep"},
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags"},
  { "<leader>w", proxy = "<c-w>", group = "windows" },
  { "<leader>b", group = "buffers", expand = function()
    return require("which-key.extras").expand.buf()
  end
  },
  { "<leader>e", "<cmd>Neotree toggle filesystem<cr>", desc = "Toggle neotree"},
})
