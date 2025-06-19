return {
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "theprimeagen/harpoon" },
	-- Snippets
	{ "rafamadriz/friendly-snippets", lazy = false },
	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-cmdline" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp-signature-help" },
		},
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		dependencies = {
			{
				"zbirenbaum/copilot-cmp",
				config = function()
					require("copilot_cmp").setup()
				end,
			},
		},
	},
	-- Utils
	{ "folke/todo-comments.nvim" },
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
}
