return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"BurntSushi/ripgrep",
		"sharkdp/fd",
	},
	config = function()
		local telescope = require("telescope")
		telescope.load_extension("fzf")
		-- set keymaps
		local keymap = vim.keymap
		local builtin = require("telescope.builtin")

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help tags" })
		keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
		keymap.set("n", "<leader>fl", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find in current buffer" })
		keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find in diagnostics" })
		keymap.set("n", "<leader>fn", require("telescope").extensions.notify.notify, { desc = "Find notifications" })

		local wk = require("which-key")
		wk.register({
			f = {
				name = "Find with telescope",
			},
		}, { prefix = "<leader>" })
	end,
}
