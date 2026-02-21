return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.config").setup({
			build = ":TSUpdate",
			ensure_installed = { "c", "lua", "python", "bash", "typescript", "html", "css", "javascript", "gdscript"},
			auto_install = true,

			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
	lazy = true,
	event = "BufReadPost *.*",
}
