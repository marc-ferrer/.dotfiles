return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				highlight = {
					enable = true,
				},

				indent = {
					enable = true,
				},

				autotag = {
					enable = true,
				},

				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"html",
					"css",
					"scss",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
					"markdown",
					"go",
					"rust",
					"python",
				},

				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
