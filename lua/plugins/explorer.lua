return {
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		opts = {
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, _)
					local hide = name:match('%.uid')
					return hide
				end
			},
			float = {
				border = "rounded"
			},
		},
		-- Optional dependencies
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
	},
}
