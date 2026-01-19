return {
	"nvimtools/none-ls.nvim",
	lazy = true,
	event = { "LspAttach", "FileType gitcommit" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Formatters
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.clang_format.with({ extra_args = { "-style=file" } }),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.cmake_format,

				-- Linters
				null_ls.builtins.diagnostics.commitlint,
				null_ls.builtins.diagnostics.markuplint,

			},
		})
	end,
}
