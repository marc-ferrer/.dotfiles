return {
	"olimorris/codecompanion.nvim",
	event = "LspAttach",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "copilot",
				},
				inline = {
					adapter = "copilot",
				},
			},
			-- Not working, needs debug
			keys = {
				{ "<leader>vca", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "Actions palette" },
				{ "<leader>vcc", "<cmd>CodeCompanionChat<cr>", mode = { "n", "v" }, desc = "New Chat" },
				{ "<leader>vci", "<cmd>CodeCompanion<cr>", mode = { "n" }, desc = "Inline prompt" },
				{ "<leader>vct", "<cmd>CodeCompanionToggle<cr>", mode = { "n" }, desc = "Toggle chat" },
			},
		})
	end,
}
