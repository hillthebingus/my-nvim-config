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
					[[88        88  88  88  88           88                       88           88                                                    ]],
					[[88        88  ""  88  88    ,d     88                       88           ""                                                    ]],
					[[88        88      88  88    88     88                       88                                                                 ]],
					[[88aaaaaaaa88  88  88  88  MM88MMM  88,dPPYba,    ,adPPYba,  88,dPPYba,   88  8b,dPPYba,    ,adPPYb,d8  88       88  ,adPPYba,  ]],
					[[88""""""""88  88  88  88    88     88P'    "8a  a8P_____88  88P'    "8a  88  88P'   `"8a  a8"    `Y88  88       88  I8[    ""  ]],
					[[88        88  88  88  88    88     88       88  8PP"""""""  88       d8  88  88       88  8b       88  88       88   `"Y8ba,   ]],
					[[88        88  88  88  88    88,    88       88  "8b,   ,aa  88b,   ,a8"  88  88       88  "8a,   ,d88  "8a,   ,a88  aa    ]8I  ]],
					[[88        88  88  88  88    "Y888  88       88   `"Ybbd8"'  8Y"Ybbd8"'   88  88       88   `"YbbdP"Y8   `"YbbdP'Y8  `"YbbdP"'  ]],
					[[                                                                                           aa,    ,88                          ]],
					[[                                                                                            "Y8bbdP"                           ]],
				},
				-- ?reg
				center = {
					{
						icon = " ⏱ ",
						icon_hl = "Title",
						desc = "Update Plugins",
						desc_hl = "Keyword",
						key = "u",
						key_hl = "Number",
						key_format = "[%s]",
						action = ":Lazy update"
					},
					{
						icon = " ✞ ",
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
					"github.com/hillthebingus",
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
