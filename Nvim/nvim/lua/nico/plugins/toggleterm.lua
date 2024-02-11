return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				shell = "zsh",
			})
			vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Open a shell" })
		end,
	},
}
