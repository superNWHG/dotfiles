return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = { "mfussenegger/nvim-dap" },

	config = function()
		require("mason-nvim-dap").setup({
			ensure_installed = { "python", "bash", "c", "kotlin", "js", "cppdbg" },

			handlers = {
				function(config)
					require("mason-nvim-dap").default_setup(config)
				end,
			},
		})

		-- Configure keymaps
		local wk = require("which-key")

		wk.register({
			d = {
				name = "Debug with DAP",
				n = { "<cmd>DapNew<cr>", "Begin DAP session" },
				c = {
					function()
						require("dap").continue()
					end,
					desc = "Continue a DAP session",
				},
				b = {
					function()
						require("dap").toggle_breakpoint()
					end,
					desc = "Toggle a DAP breakpoint",
				},
				r = {
					function()
						require("dap").repl.toggle()
					end,
					desc = "Toggle the DAP REPL",
				},
				p = {
					function()
						require("dap").pause()
					end,
					desc = "Pause a DAP session",
				},
				u = {
					function()
						require("dapui").toggle({})
					end,
					desc = "Open the dap UI",
				},
			},
		}, { prefix = "<leader>" })
	end,
}
