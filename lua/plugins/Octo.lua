return {
	"pwntester/octo.nvim",
	cmd = "Octo",
	opts = {
		picker = "telescope",
		enable_builtin = true,
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons", -- optional if file_panel.icons is a function
	},
	-- Keybinds
	keys = {
		{
			"<leader>oi",
			"<CMD>Octo issue list<CR>",
			desc = "List GitHub Issues",
		},
		{
			"<leader>op",
			"<CMD>Octo pr list<CR>",
			desc = "List GitHub PullRequests",
		},
		{
			"<leader>od",
			"<CMD>Octo discussion list<CR>",
			desc = "List GitHub Discussions",
		},
		{
			"<leader>on",
			"<CMD>Octo notification list<CR>",
			desc = "List GitHub Notifications",
		},
		{
			"<leader>oo",
			"<CMD>Octo<CR>",
			desc = "Open general Octo panel",
		},
	},
}
