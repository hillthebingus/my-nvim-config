-- File explorer keymaps.
vim.keymap.set("n", "<leader>f", function()
	require("oil").toggle_float()
end)
vim.keymap.set("n", "F", ":Oil<CR>")

-- triggering formatting.
vim.keymap.set("n", "<leader>j", vim.lsp.buf.format)

-- LSP stuff.
vim.keymap.set("n", "<leader>ds", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>da", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>dh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>dr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>dt", function()
	-- Making sure it's properly initialized.
	if vim.g.lsp_enabled == nil then
		vim.g.lsp_enabled = true
	end

	if vim.g.lsp_enabled then
		vim.cmd(":lsp disable")
	else
		vim.cmd(":lsp enable")
	end

	-- switching state.
	vim.g.lsp_enabled = not vim.g.lsp_enabled
end)

-- Traversing the codebase easier.
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>gc", vim.lsp.buf.incoming_calls)
vim.keymap.set("n", "<leader>go", vim.lsp.buf.outgoing_calls)

-- For formatting \echo "[row in ascii banner]";\ into \"[row in ascii banner]",\ only gets set in dashboard.lua
-- to prevent accidentally running it inside a bash script and exploding it
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "dashboard.lua",
	callback = function(_)
		vim.keymap.set("n", "<leader><leader>t", ":%s/echo " .. "/<CR>:%s/;$/,/<CR>")
	end,
})
