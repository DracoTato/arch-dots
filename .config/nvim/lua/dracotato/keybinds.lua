local wk = require("which-key")

local builtin = require("telescope.builtin")
local conform = require("conform")

wk.add({
  { "<ESC>", ":nohl<CR>" },
  { "<Esc><Esc>", "<C-\\><C-n>", mode = "t", desc = "Exit terminal mode" },
  { "<leader>f", group = "Find" },
  { "<leader><leader>", builtin.find_files, desc = "Telescope [F]ind [F]ile" },
  { "<leader>fb", builtin.buffers, desc = "Telescope [F]ind [B]uffer" },
  { "<leader>f/", builtin.live_grep, desc = "Telescope [F]ind [G]rep" },
  { "<leader>fk", builtin.keymaps, desc = "Telescope [F]ind [K]eymap" },
  { "<leader>fh", builtin.help_tags, desc = "Telescope [F]ind [H]elp" },
  { "<leader>fc", builtin.colorscheme, desc = "Telescope [F]ind [C]olorscheme" },
  { "<leader>fg", builtin.git_commits, desc = "Telescope [F]ind [C]ommit" },
  { "<leader>e", ":Oil --float<CR>", desc = "Open Oil" },
  { "<leader>l", ":Lazy<CR>", desc = "Lazy" },
  { "<leader>qq", ":wqa<CR>", desc = "Quit All (saving)" },
  { "<leader>c", group = "Code" },
  { "<leader>ca", vim.lsp.buf.code_action, desc = "[C]ode [A]ctions" },
  { "<leader>cd", vim.diagnostic.open_float, desc = "[C]ode [D]iagnostic" },
  { "<leader>cl", vim.diagnostic.setloclist, desc = "Open Diagnostic [L]ist" },
  { "<leader>cf", conform.format, desc = "[C]ode [F]ormat" },
  { "<leader>b", group = "Buffer" },
  { "<leader>bd", ":bdelete<CR>", desc = "[B]uffer [D]elete" },
  { "<leader>bn", ":bnext<CR>", desc = "[B]uffer [N]ext" },
  { "<leader>bp", ":bprevious<CR>", desc = "[B]uffer [P]revious" },
  { "<leader>w", proxy = "<C-w>", desc = "Window" },
})
