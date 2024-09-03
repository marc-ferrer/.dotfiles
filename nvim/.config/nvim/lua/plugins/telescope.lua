-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	-- or                              , branch = '0.1.x',
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>pf", "<cmd>Telescope find_files<cr>" },
		{ "<leader>pg", "<cmd>Telescope live_grep<cr>" },
		{ "<C-p>", "<cmd>Telescope git_files<cr>" },
		{
			"<leader>ps",
			function()
				local builtin = require("telescope.builtin")
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end,
		},
	},
}
