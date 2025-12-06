require("config.lazy")
require("config.opts")
require("config.autocmd")
require("config.keymaps")
require("config.lsp_servers")

-- Honestly, just keep this flam here idc
vim.diagnostic.config({
	virtual_lines = true,
})

-- Set colorschemes.
vim.cmd.colorscheme("vague")

