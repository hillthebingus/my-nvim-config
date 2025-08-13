return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- Setup.
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"^.git/",
					"^build/",
				},
			},
		})

		local builtin = require("telescope.builtin")
		local themes = require("telescope.themes")

		vim.keymap.set("n", "<C-p>", function()
			builtin.find_files({
				hidden = true,
			})
		end)

		vim.keymap.set("n", "<C-l>", function()
			builtin.live_grep(themes.get_ivy({
				layout_config = {
					preview_width = 0.8,
				},
				hidden = true,
			}))
		end)
	end,
	lazy = true,
	keys = {
		{ "<C-p>" },
		{ "<C-l>" },
	},
}
