local wk = require("which-key")

local builtin = require("telescope.builtin")
local conform = require("conform")

wk.add({
	{ "<ESC>", ":nohl<CR>" },
	{ "<leader>f", group = "Find" },
	{ "<leader><leader>", builtin.find_files, desc = "Telescope [F]ind [F]ile" },
	{ "<leader>fb", builtin.buffers, desc = "Telescope [F]ind [B]uffer" },
	{ "<leader>l", ":Lazy<CR>", desc = "Lazy" },
	{ "<leader>qq", ":wqa<CR>", desc = "Quit All (saving)" },
	{ "<leader>c", group = "Code" },
	{ "<leader>ca", vim.lsp.buf.code_action, desc = "[C]ode [A]ctions" },
	{ "<leader>cd", vim.diagnostic.open_float, desc = "[C]ode [D]iagnostic" },
	{ "<leader>cf", conform.format, desc = "[C]ode [F]ormat" },
})
