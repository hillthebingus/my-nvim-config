-- Local indentation.
-- pattern is all the filetypes i wish to have 2 space indentation, all the others should be 4 spaces.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "html", "css" },
	callback = function(_)
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end,
})

-- Makes html files always be html, none of this angular bs
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = { "*.html" },
	callback = function(_)
		vim.o.filetype = "html"
		vim.lsp.enable("html")
	end,
})

-- Disables lsp from input files.
vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = { "*.in" },
	callback = function(_)
		vim.bo.filetype = ""
	end,
})

-- Makes sure the commitlintrc help field is only available on gitcommit filetypes.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "gitcommit" },
	callback = function(_)
		vim.keymap.set("n", "<leader>hh", "<cmd>!yq -r '.help' .commitlintrc.yaml<CR>")
	end,
})

-- Expand tab is cringe but evil cmakelint:
--
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cmake" },
	callback = function(_)
		vim.bo.expandtab = true
	end,
})

-- Make sure gdscript files can have folds.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "gdscript" },
	callback = function(_)
		vim.wo.foldmarker = "#region,#endregion"
	end,
})

-- Autostarts lsp on mcfunction files.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "mcfunction" },
	callback = function(_)
		vim.lsp.enable("spyglassmc")
	end,
})
