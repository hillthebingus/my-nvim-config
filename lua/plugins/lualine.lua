-- Simply puts a message from a table of short messages.
local function buffer_message()
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
end

-- Returned table.
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = true,
	event = "LspAttach",
	opts = function()
		-- The tabline.
		local _tabline = {
			lualine_a = {
				{
					"tabs",
					mode = 1,
					separator = { left = "", right = "" },
					max_length = vim.o.columns,
				},
			},
		}

		-- Active sections.
		local _sections = {
			lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
			lualine_b = { "filename", "branch" },
			lualine_c = {
				"%=",
				buffer_message,
			},
			lualine_y = { "lsp_status", "filetype", "progress" },
			lualine_z = {
				{ "location", separator = { right = "" }, left_padding = 2 },
			},
		}

		local _inactive_sections = {
			lualine_a = { "filename" },
		}

		local config = {
			options = {
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},

			sections = _sections,
			inactive_sections = _inactive_sections,
			tabline = _tabline,

			extensions = { "lazy", "fzf" },
		}

		-- Applying.
		return config
	end,
}
