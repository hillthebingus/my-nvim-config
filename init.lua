require("config.lazy")
require("config.opts")
require("config.autocmd")
require("config.keymaps")

-- Honestly, just keep this flam here idc
vim.diagnostic.config({
	virtual_text = true,
})

-- Set colorschemes.
-- vim.g.material_style = "oceanic"
vim.cmd.colorscheme("ashen")

vim.g.servers = {
	lua_ls = {},
	spyglassmc_language_server = {},
	gopls = {},
	bashls = {},
	clangd = {
		filetypes = { "c", "h" },
	},
	cmake = {},
	html = {},
	cssls = {},
	ts_ls = {},
	jsonls = {},
	pyright = {},
	lemminx = {},
}

for server, config in pairs(vim.g.servers) do
	vim.lsp.enable(server)
end
