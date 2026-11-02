vim.filetype.add({
	extension = {
		mcfunction = "mcfunction",
	},
})

-- Honestly, just keep this flam here idc
vim.diagnostic.config({
	virtual_lines = false,
})


require("config.lazy")
require("config.opts")
require("config.autocmd")
require("config.keymaps")
require("config.lsp_servers")
require("config.godot_server_mode")

-- Set colorschemes.
vim.cmd.colorscheme("vague")
