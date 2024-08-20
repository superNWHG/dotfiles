return {
	"folke/which-key.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		defaults = {
			{ "c", group = "Github copilot" },
			{ "s", group = "Split management" },
			{ "t", group = "Tab management" },
			{ "b", group = "Buffer management" },
		},
		prefix = "<leader>",
		buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
		silent = true, -- use `silent` when creating keymaps
		noremap = true, -- use `noremap` when creating keymaps
		nowait = false, -- use `nowait` when creating keymaps
		expr = false, -- use `expr` when creating keymaps
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}
