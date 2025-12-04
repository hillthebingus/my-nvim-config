return {
	"saghen/blink.cmp",
	lazy = true,

	dependencies = {
		"rafamadriz/friendly-snippets",
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
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},
				},
			},
			documentation = {
				auto_show = true,
				window = { border = "rounded" },
			},

			ghost_text = {
				enabled = true
			}
		},
		signature = {
			enabled = true,
			trigger = {
				-- Show the signature help automatically
				enabled = true,
				-- Show the signature help window after typing any of alphanumerics, `-` or `_`
				show_on_keyword = true,
				-- Show the signature help window when entering insert mode
				show_on_insert = false,
				-- Show the signature help window when the cursor comes after a trigger character when entering insert mode
				show_on_insert_on_trigger_character = false,
			},
			window = {
				border = "rounded",
				show_documentation = true
			}
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},

	opts_extend = { "sources.default" },
}

