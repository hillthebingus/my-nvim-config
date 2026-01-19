return {
	"saghen/blink.cmp",
	lazy = true,

	dependencies = {
		"rafamadriz/friendly-snippets",
		"nvim-mini/mini.icons",
	},

	version = "1.*",

	opts = {
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "normal",
		},

		completion = {
			menu = {
				auto_show = true,
				border = "rounded",
				draw = {
					components = {
						kind_icon = {
							text = function(ctx)
								local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
								return kind_icon
							end,
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
						kind = {
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
					},
				},
			},
			documentation = {
				auto_show = true,
				window = { border = "rounded" },
			},

			ghost_text = {
				enabled = true,
			},
		},
		signature = {
			enabled = true,
			trigger = {
				enabled = true,
				show_on_keyword = true,
				show_on_insert = false,
			},
			window = {
				border = "rounded",
				show_documentation = true,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	opts_extend = { "sources.default" },
}
