-- Themes.
return {
	-- evergarden
	{
		"comfysage/evergarden",
		lazy = false,
		config = function()
			require("evergarden").setup({
				transparent_background = true,
				contrast_dark = "soft", -- 'hard'|'medium'|'soft'
				overrides = {}, -- add custom overrides
			})
		end,
	},
	-- rose-pine
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},

	-- gruvbox-material
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		lazy = false,
		config = function()
			vim.g.gruvbox_material_foreground = "material"
			vim.g.gruvbox_material_background = "soft"
			vim.g.gruvbox_material_enable_italic = true
		end,
	},
	-- Zenbones
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		config = function()
			vim.g.zenbones_darken_comments = 45
		end,
	},
	-- cyberdream
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
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
		lazy = false,
		config = function()
			require("vague").setup({})
		end,
	},
	{
		"ficcdaf/ashen.nvim",
		lazy = false,
	},
	{
		"gbprod/nord.nvim",
		lazy = false,
		config = function()
			require("nord").setup({})
		end,
	},
	{
		"marko-cerovac/material.nvim",
		lazy = false,
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
	},
	{
		"danilo-augusto/vim-afterglow",
		lazy = false,
	},
}
