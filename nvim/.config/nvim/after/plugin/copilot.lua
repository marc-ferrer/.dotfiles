require("copilot").setup({
	filetyps = {
		javascript = true,
		typescript = true,
	},
	-- Disabled as copilot is used through copilot-cmp
	suggestion = { enabled = false },
	panel = { enabled = false },
})
