return {
	"michaelrommel/nvim-silicon",
	event = "BufRead",
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			font = "JetBrains Mono",
			to_clipboard = true,
			no_window_controls = true,
		})
		vim.keymap.set("n", "<leader>o", "<cmd>Silicon<cr>", { desc = "Create a screenshot of the current file" })
	end,
}
