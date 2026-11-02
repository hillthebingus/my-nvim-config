return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- Setup.
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"^.git/",
					"^build/",
					"%.uid",
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

		vim.keymap.set("n", "<leader>p", function()
			builtin.oldfiles({
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
		"<C-p>",
		"<C-l>",
		"<leader>p",
	}
}
