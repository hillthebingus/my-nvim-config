return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "ficcdaf/ashen.nvim" },
	lazy = true,
	event = "LspAttach",
	opts = function()
		local theme = require("ashen.plugins.lualine").lualine_opts

		theme.extensions = { "lazy", "fzf" }
		theme.sections.lualine_c = {
			"%=",
			function()
				local msg_table = {
					"Segmentation fault (core dumped) 💔",
					"Praise the lord.",
					"Interesting... Very, very interesting...",
					"Human.. I remember you're genocides...",
					"✝️",
					"John 3:16: For God so loved the world...",
				}
				math.randomseed()
				vim.b.session_index = (vim.b.session_index or math.random(#msg_table))

				return msg_table[vim.b.session_index]
			end,
		}
		-- Corner separators.
		theme.sections.lualine_x = {}
		theme.sections.lualine_y = { "lsp_status", "filetype", "progress" }

		return theme
	end,
	-- config = function()
	-- 	require("lualine").setup({
	-- 		options = {
	-- 			theme = "auto",
	-- 			component_separators = "",
	-- 			section_separators = { left = "", right = "" },
	-- 		},
	-- 		sections = {
	-- 			lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
	-- 			lualine_b = { "filename", "branch" },
	-- 			lualine_c = {
	-- 				"%=",
	-- 				function()
	-- 					local msg_table = {
	-- 						"Segmentation fault (core dumped) 💔",
	-- 						"Praise the lord.",
	-- 						"Interesting... Very, very interesting...",
	-- 						"Human.. I remember you're genocides...",
	-- 						"✝️",
	-- 						"John 3:16: For God so loved the world...",
	-- 					}
	-- 					math.randomseed()
	-- 					vim.b.session_index = (vim.b.session_index or math.random(#msg_table))
	--
	-- 					return msg_table[vim.b.session_index]
	-- 				end,
	-- 			},
	-- 			lualine_x = {},
	-- 			lualine_y = { "lsp_status", "filetype", "progress" },
	-- 			lualine_z = {
	-- 				{ "location", separator = { right = "" }, left_padding = 2 },
	-- 			},
	-- 		},
	-- 		inactive_sections = {
	-- 			lualine_a = { "filename" },
	-- 			lualine_b = {},
	-- 			lualine_c = {},
	-- 			lualine_x = {},
	-- 			lualine_y = {},
	-- 			lualine_z = { "location" },
	-- 		},
	--
	-- 		tabline = {
	-- 			lualine_a = {
	-- 				{
	-- 					"tabs",
	-- 					mode = 1,
	-- 					separator = { left = "", right = "" },
	-- 					max_length = vim.o.columns,
	-- 				},
	-- 			},
	-- 			lualine_b = {},
	-- 			lualine_c = {},
	-- 			lualine_x = {},
	-- 			lualine_y = {},
	-- 			lualine_z = {},
	-- 		},
	-- 		extensions = {},
	-- 	})
	-- end,
}
