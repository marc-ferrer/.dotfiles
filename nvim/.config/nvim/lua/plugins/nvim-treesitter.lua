return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"angular",
				"c",
				"css",
				"scss",
				"bash",
				"lua",
				"vim",
				"vimdoc",
				"dockerfile",
				"gitignore",
				"markdown",
				"markdown_inline",
				"go",
				"rust",
				"python",
				"rego",
			}

			require("nvim-treesitter").install(ensure_installed)

			-- On `main` there is no `highlight`/`indent` setup option; instead we
			-- start treesitter per buffer. `vim.treesitter.start()` errors if no
			-- parser is installed for the filetype, so guard it with pcall.
			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					if pcall(vim.treesitter.start) then
						-- Treesitter-based indentation (experimental on `main`).
						vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end
				end,
			})

			-- nvim-ts-autotag is configured independently of the treesitter API.
			require("nvim-ts-autotag").setup()
		end,
	},
}
