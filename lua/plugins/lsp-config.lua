return {
	{
		"williamboman/mason.nvim",
		opts = {},
		lazy = true,
		event = "BufReadPost *.*",
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
		},
		opts = {
			servers = {
				lua_ls = {},
				lemminx = {},
				clangd = {},
				cmake = {},
				html = {},
				cssls = {},
				ts_ls = {},
				jsonls = {},
				pyright = {},
				-- FIX
				-- Apparently, the default cmd configuration blink.cmp gives just forgets to append "dotnet" and the path to the omnisharp dll.
				-- and also, using "~/" instead of /home/$USER/ breaks it as well for some reason? super hilarious i know.
				-- 0/10 frick Mike Rosoft
				omnisharp = {
					cmd = {
						"dotnet",
						"/home/" ..
						vim.fn.expand("$USER") .. "/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll",
						"-z",
						"--hostPID", tostring(vim.fn.getpid()),
						"DotNet:enablePackageRestore=false",
						"--encoding",
						"utf-8",
						"--languageserver",
						"Sdk:IncludePrereleases=true",
						"FormattingOptions:EnableEditorConfigSupport=true"
					},
					enable_roslyn_analysers = true,
					enable_import_completion = true,
					organize_imports_on_format = true,
					enable_decompilation_support = true,
					filetypes = { 'cs', 'vb', 'csproj', 'sln', 'slnx', 'props', 'csx', 'targets', 'tproj', 'slngen', 'fproj' },
				},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")

			for server, config in pairs(opts.servers) do
				-- Merging capabilities.
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)

				-- FIX
				-- It took me like 2 hours just to get omnisharp working, i'm leaving this here as a trophy.
				-- OmniSharp takes forever to boot but idc
				--
				-- NOTE
				-- dbg was a defined local outside of this loop.
				--
				-- if server == "omnisharp" then
				-- 	dbg = config
				-- end
			end


			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader><leader>k", vim.lsp.buf.code_action, {})
		end,
		lazy = true,
		event = "BufReadPost *.*",
	},
}
