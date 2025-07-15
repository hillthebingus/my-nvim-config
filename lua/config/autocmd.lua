-- Local indentation.
-- pattern is all the filetypes i wish to have 2 space indentation, all the others should be 4 spaces.
-- ¿reg
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "html", "css"},
	callback = function(_)
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end,
})
-- ?reg
