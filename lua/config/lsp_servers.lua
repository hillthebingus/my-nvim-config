-- This file just enables all lsp servers.

-- Extended configs.
vim.g.configs = {
	clangd = {
		filetypes = { "c", "h" },
	},
}

-- Our servers.
vim.g.servers = {
	"lua_ls",
	"gopls",
	"bashls",
	"clangd",
	"cmake",
	"html",
	"cssls",
	"ts_ls",
	"jsonls",
	"pyright",
	"lemminx",
}

-- Updating the configuration for the servers listed in configs.
for server, config in pairs(vim.g.configs) do
	vim.lsp.config[server] = config
end

-- Enabling all the servers.
vim.lsp.enable(vim.g.servers)
