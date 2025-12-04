return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	opts = {},
	config = function()
		-- Neotree keymaps.
		vim.keymap.set("n", "<leader>f", ":Neotree filesystem toggle right<CR>")
		vim.keymap.set("n", "<leader>g", ":Neotree focus<CR>")
		vim.keymap.set("n", "<leader>..", ":Neotree dir=..<CR>")
		vim.keymap.set("n", "<leader>,.", ":Neotree dir=/home/hillzingus/<CR>")
	end,
	lazy = true,
	event = { "BufReadPost *.*", "LspAttach" },
}
