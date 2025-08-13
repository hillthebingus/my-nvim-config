-- Themes.
return {
	-- evergarden
	{
		'comfysage/evergarden',
		lazy = true,
		opts = {
			transparent_background = true,
			contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
			overrides = {},  -- add custom overrides
		},
	},
	-- rose-pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},

	-- gruvbox-material
	{
		'sainnhe/gruvbox-material',
		lazy = true,
		config = function()
			vim.g.gruvbox_material_foreground = "original"
			vim.g.gruvbox_material_enable_italic = true
		end
	},
	-- Zenbones
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = true,
		config = function()
			vim.g.zenbones_darken_comments = 45
		end
	},
	-- cyberdream
	{
		"scottmckendry/cyberdream.nvim",
		lazy = true,
		config = function()
			require("cyberdream").setup({
				transparent = true,
				italic_comments = true,
				hide_fillchars = true,
			})
		end,
	},
	-- vague
	{
		"vague2k/vague.nvim",
		lazy = true,
		config = function()
			require("vague").setup({
			})
		end
	},

}

