return {
	"stevearc/conform.nvim",
	opts = {
		log_level = vim.log.levels.TRACE,
		formatter_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format", "ruff_organize_imports" },
			html = { "prettier" },
			css = { "prettier" },
			javascript = { "prettier" },
			htmldjango = { "djlint" },
			bash = { "shfmt" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
