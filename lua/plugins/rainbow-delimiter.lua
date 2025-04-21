return {
	"HiPhish/rainbow-delimiters.nvim",
	config = function()
		-- Define the config directly — no `local rainbow_delimiters` assignment
		vim.g.rainbow_delimiters = {
			strategy = {
				[""] = require("rainbow-delimiters").strategy["global"],
				vim = require("rainbow-delimiters").strategy["local"],
			},
			query = {
				[""] = "rainbow-delimiters",
				lua = "rainbow-blocks",
			},
			highlight = {
				"RainbowDelimiterRed",
				"RainbowDelimiterYellow",
				"RainbowDelimiterBlue",
				"RainbowDelimiterOrange",
				"RainbowDelimiterGreen",
				"RainbowDelimiterViolet",
				"RainbowDelimiterCyan",
			},
		}
	end,
}
