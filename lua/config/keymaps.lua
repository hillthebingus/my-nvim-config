-- Neotree keymaps.
vim.keymap.set("n", "<leader>f", ":Neotree filesystem toggle right<CR>")
vim.keymap.set("n", "<leader>g", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader>..", ":Neotree dir=..<CR>")
vim.keymap.set("n", "<leader>,.", ":Neotree dir=/home/hillzingus/<CR>")

-- triggering formatting.
vim.keymap.set("n", "<leader>j", vim.lsp.buf.format)

-- For formatting \echo "[row in ascii banner]";\ into \"[row in ascii banner]",\ only gets set in dashboard.lua
-- to prevent accidentally running it inside a bash script and exploding it
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "dashboard.lua",
	callback = function(_)
		vim.keymap.set("n", "<space><space>t", ':%s/echo "/"/<CR>:%s/;$/,/<CR>')
	end,
})
