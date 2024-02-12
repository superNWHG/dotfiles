return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("fzf")
		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Find files with telescope" })
	end,
}
