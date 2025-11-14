-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(args)
-- 		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
-- 		if not client then
-- 			return
-- 		end
-- 		if client:supports_method("textDocument/formatting") then
-- 			vim.api.nvim_create_autocmd("BufWritePre", {
-- 				buffer = args.buf,
-- 				callback = function()
-- 					-- vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
-- 				end,
-- 			})
-- 		end
-- 	end,
-- })

-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*",
--   callback = function(args)
--     require("conform").format({ bufnr = args.buf })
--   end,
-- })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank({ timeout = 200 })
	end,
})
