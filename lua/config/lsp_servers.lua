-- This file just enables all lsp servers.

-- Vim moment.
vim.g.c_syntax_for_h = 1
-- Extended configs.
vim.g.configs = {
	gdscript = {},
	clangd = {
		filetypes = { "c", "h" },
	},
	lua_ls = {
		filetypes = { "lua" },
	},
}

-- Our servers.
vim.g.servers = {
	"lua_ls",
	"gopls",
	"bashls",
	"clangd",
	"neocmake",
	"html",
	"cssls",
	"ts_ls",
	"jsonls",
	"pyright",
	"lemminx",
	"gdscript"
}

-- Updating the configuration for the servers listed in configs.
for server, config in pairs(vim.g.configs) do
	vim.lsp.config[server] = config
end

-- Enabling all the servers.
vim.lsp.enable(vim.g.servers)
