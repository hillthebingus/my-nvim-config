-- Themes.
return {
	-- evergarden
	{
		'comfysage/evergarden',
		priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
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
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_foreground = "original"
			vim.g.gruvbox_material_enable_italic = true
		end
	},
	-- Zenbones
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.zenbones_darken_comments = 45
		end
	},
	-- cyberdream
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
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
		config = function()
			require("vague").setup({
			})
		end
	},

}

