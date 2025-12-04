-- Local indentation.
-- pattern is all the filetypes i wish to have 2 space indentation, all the others should be 4 spaces.
-- ¿reg
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "html", "css", "cmake" },
	callback = function(_)
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end,
})
-- ?reg

-- Disables lsp from input files.
-- ¿reg
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = { "*.in"},
	callback = function(_)
		vim.bo.filetype = ""
	end,
})
-- ?reg

-- Makes sure the commitlintrc help field is only available on gitcommit filetypes.
-- ¿reg
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "gitcommit" },
	callback = function(_)
		vim.keymap.set("n", "<leader>hh", "<cmd>!yq -r '.help' .commitlintrc.yaml<CR>")
	end,
})
-- ?reg


vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cmake" },
	callback = function(_)
		vim.bo.expandtab = true
	end,
})
