return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		opts = {
			servers = {
				lua_ls = {},
				lemminx = {},
				clangd = {},
				cmake = {},
				html = {},
				cssls = {},
				ts_ls = {},
				jsonls = {},
			},
		},
		config = function(_, opts)
			local cap = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			for server in pairs(opts.servers) do
				lspconfig[server].setup({ cap })
			end

			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader><leader>k", vim.lsp.buf.code_action, {})
		end,
	},
}
