local wk = require("which-key")

local builtin = require("telescope.builtin")
local conform = require("conform")
local oil = require("oil")
local gitsigns = require("gitsigns")

wk.add({
  -- Util
  { "<ESC>", ":nohl<CR>" },
  { "<Esc><Esc>", "<C-\\><C-n>", mode = "t", desc = "Exit terminal mode" },
  -- Misc
  { "<leader>e", oil.toggle_float, desc = "Open Oil" },
  { "<leader>l", ":Lazy<CR>", desc = "Lazy" },
  { "<leader>qq", ":qa!<CR>", desc = "Quit All (force)" },
  { "<leader>wqa", ":wqa<CR>", desc = "Quit All (saving)" },
  -- Telescope
  { "<leader>f", group = "Find" },
  { "<leader><leader>", builtin.find_files, desc = "Telescope Find File" },
  { "<leader>fb", builtin.buffers, desc = "Telescope Find Buffer" },
  { "<leader>f.", builtin.resume, desc = "Telescope Repeat search" },
  { "<leader>/", builtin.live_grep, desc = "Grep Files" },
  { "<leader>fk", builtin.keymaps, desc = "Telescope Find Keymap" },
  { "<leader>fh", builtin.help_tags, desc = "Telescope Find Help" },
  { "<leader>fc", builtin.colorscheme, desc = "Telescope Find Colorscheme" },
  -- Code
  { "<leader>c", group = "Code" },
  { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Actions" },
  { "<leader>cd", vim.diagnostic.open_float, desc = "Code Diagnostic" },
  { "<leader>cl", vim.diagnostic.setloclist, desc = "Open Diagnostic List" },
  { "<leader>cf", conform.format, desc = "Code Format" },
  -- Buffers
  { "<S-h>", ":bprevious<CR>", desc = "Buffer Previous" },
  { "<S-l>", ":bnext<CR>", desc = "Buffer Next" },
  { "<leader>b", group = "Buffer" },
  { "<leader>bd", ":bd<CR>", desc = "Buffer Delete" },
  { "<leader>bn", ":bnext<CR>", desc = "Buffer Next" },
  { "<leader>bp", ":bprevious<CR>", desc = "Buffer Previous" },
  { "<leader>bo", ":%bd|e#|bd#<CR>", desc = "Buffer Close others" },
  -- Terminal
  { "<leader>t", group = "Terminal" },
  { "<leader>tt", ":split term:///bin/zsh<CR>a", desc = "Open Terminal Horizontal (zsh)" },
  { "<leader>tn", ":terminal<CR>a", desc = "Open Terminal New Tab" },
  { "<leader>tv", ":vsplit term:///bin/zsh<CR>a", desc = "Open Terminal Vertical (zsh)" },
  -- Git
  { "<leader>g", group = "Git" },
  { "<leader>gc", builtin.git_commits, desc = "Git Commits" },
  { "<leader>gl", gitsigns.blame_line, desc = "Git Blame line" },
  { "<leader>gL", gitsigns.blame, desc = "Git Blame file" },
  { "<leader>gba", gitsigns.stage_buffer, desc = "Git Buffer Stage" },
  { "<leader>gbr", gitsigns.reset_buffer, desc = "Git Buffer Reset" },
  { "<leader>gh", gitsigns.preview_hunk_inline, desc = "Git Hunk preview under cursor" },
  { "<leader>gha", gitsigns.stage_hunk, desc = "Git Hunk Stage" },
  { "<leader>ghr", gitsigns.reset_hunk, desc = "Git Hunk Reset" },
  {
    "<leader>ghn",
    function()
      gitsigns.nav_hunk("next")
    end,
    desc = "Git Hunk Next",
  },
  {
    "<leader>ghp",
    function()
      gitsigns.nav_hunk("prev")
    end,
    desc = "Git Hunk Previous",
  },
  {
    "<leader>ghN",
    function()
      gitsigns.nav_hunk("last")
    end,
    desc = "Git Hunk Last",
  },
  {
    "<leader>ghP",
    function()
      gitsigns.nav_hunk("first")
    end,
    desc = "Git Hunk First",
  },
  { "<leader>gsh", gitsigns.select_hunk, desc = "Git Select Hunk under cursor" },
  -- Window
  { "<leader>w", proxy = "<C-w>", desc = "Window" },
  { "<C-h>", "<C-w>h" },
  { "<C-j>", "<C-w>j" },
  { "<C-k>", "<C-w>k" },
  { "<C-l>", "<C-w>l" },
})
