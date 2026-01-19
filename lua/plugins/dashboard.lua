return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			shortcut_type = "number",
			config = {
				-- Header art ¿reg
				header = {
					"",
					"               |           ",
					"           \\       /      ",
					"             .---.         ",
					"        '-.  |   |  .-'    ",
					"          ___|   |___      ",
					"     -=  [           ]  =- ",
					"         `---.   .---'     ",
					"      __||__ |   | __||__  ",
					"      '-..-' |   | '-..-'  ",
					"        ||   |   |   ||    ",
					"        ||_.-|   |-,_||    ",
					"      .-\"`   `\"`\'`   `\"-.",
					"    .'                   '.",
					"",
				},
				-- ?reg
				center = {
					{
						icon = "⏱  ",
						icon_hl = "Title",
						desc = "Update Plugins",
						desc_hl = "Keyword",
						key = "u",
						key_hl = "Number",
						key_format = "[%s]",
						action = ":Lazy update",
					},
					{
						icon = "✞  ",
						icon_hl = "Title",
						desc = "Find Files                           ",
						desc_hl = "String",
						key = "f",
						key_hl = "Number",
						key_format = "[%s]",
						action = function()
							require("telescope.builtin").find_files({ cwd = "." })
						end,
					},
					{
						icon = "🗐 ",
						icon_hl = "Title",
						desc = "Grep Project",
						desc_hl = "String",
						key = "g",
						key_hl = "Number",
						key_format = "[%s]",
						action = function()
							require("telescope.builtin").live_grep(require("telescope.themes").get_ivy({
								layout_config = {
									preview_width = 0.8,
								},
								hidden = true,
							}))
						end,
					},
					{
						icon = "🔍 ",
						icon_hl = "Title",
						desc = "Open Oil.nvim",
						desc_hl = "String",
						key = "o",
						key_hl = "Number",
						key_format = "[%s]",
						action = function()
							require("oil").toggle_float()
						end,
					},
					{
						icon = "🌹 ",
						icon_hl = "Title",
						desc = "Browse Colorschemes!",
						desc_hl = "String",
						key = "c",
						key_hl = "Number",
						key_format = "[%s]",
						action = function()
							require("telescope.builtin").colorscheme(require("telescope.themes").get_dropdown({
								enable_preview = true,
								hidden = true,
							}))
						end,
					},
				},

				footer = {
					"Segmentation fault (core dumped) 💔💔💔",
					"codeberg.org/hillthebingus",
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
