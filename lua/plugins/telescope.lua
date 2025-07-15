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
				},
			},
		})

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<C-p>", function()
			builtin.find_files({ hidden = true })
		end)

		vim.keymap.set("n", "<C-L>", function()
			builtin.live_grep({ hidden = true })
		end)
	end,
}
