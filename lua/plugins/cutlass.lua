return {
	{
		"gbprod/cutlass.nvim",
		config = function()
			require("cutlass").setup()

			-- Optional custom keybindings
			vim.keymap.set("n", "m", "d")
			vim.keymap.set("x", "m", "d")
			vim.keymap.set("n", "mm", "dd")
			vim.keymap.set("n", "m", "D")
		end,
	},
}
