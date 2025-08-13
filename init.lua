require("config.lazy")
require("config.opts")
require("config.autocmd")
require("config.keymaps")

-- Honestly, just keep this flam here idc
vim.diagnostic.config({
	virtual_text = true,
})


-- Set colorschemes.
vim.cmd.colorscheme("rose-pine-moon")
