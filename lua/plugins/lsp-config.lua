return {
	{
		"williamboman/mason.nvim",
		opts = {},
		lazy = true,
		event = { "BufReadPost *.*", "FileType gitcommit" },
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		config = function(_, _)
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader><leader>k", vim.lsp.buf.code_action, {})
		end,
		lazy = true,
		event = "BufReadPost *.*",
		keys = {
			{ "<leader>J" },
		},
	}
}
