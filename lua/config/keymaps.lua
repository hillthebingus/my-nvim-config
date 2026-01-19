-- File explorer keymaps.
vim.keymap.set("n", "<leader>f", function()
	require("oil").toggle_float()
end)
vim.keymap.set("n", "F", ":Oil<CR>")

-- triggering formatting.
vim.keymap.set("n", "<leader>j", vim.lsp.buf.format)

-- LSP stuff.
vim.keymap.set("n", "<leader>ds", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>dt", function()
	-- Making sure it's properly initialized.
	if vim.g.lsp_enabled == nil then
		vim.g.lsp_enabled = true
	end

	if vim.g.lsp_enabled then
		vim.cmd(":LspStop")
	else
		vim.cmd(":LspStart")
	end

	-- switching state.
	vim.g.lsp_enabled = not vim.g.lsp_enabled
end)

-- For formatting \echo "[row in ascii banner]";\ into \"[row in ascii banner]",\ only gets set in dashboard.lua
-- to prevent accidentally running it inside a bash script and exploding it
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "dashboard.lua",
	callback = function(_)
		vim.keymap.set("n", "<leader><leader>t", ":%s/echo " .. "/<CR>:%s/;$/,/<CR>")
	end,
})
