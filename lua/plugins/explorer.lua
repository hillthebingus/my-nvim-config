return {
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		opts = {
			view_options = {
				show_hidden = true
			},
			float = {
				border = "rounded"
			}
		},
		-- Optional dependencies
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
	},
}
