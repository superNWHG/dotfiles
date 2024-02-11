return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		opts = {
			show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
			debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
			disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
		},
		build = function()
			vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
		end,
		event = "VeryLazy",
		keys = {
			{
				"<leader>ce",
				"<cmd>normal! ggVG<cr> <bar> <cmd>'<,'>CopilotChatVisual Explain how it works<cr>",
				desc = "CopilotChat - Explain code",
			},
			{
				"<leader>cc",
				"<cmd>normal! ggVG<cr> <bar> :CopilotChatVisual ",
				desc = "CopilotChat - Custom command",
			},
			{
				"<leader>cd",
				"<cmd>normal! ggVG<cr> <bar> <cmd>'<,'>CopilotChatVisual Find possible errors and fix them for me<cr>",
				desc = "CopilotChat - Find and fix errors",
			},
			{
				"<leader>cv",
				":CopilotChatVisual",
				mode = "x",
				desc = "CopilotChat - Open in vertical split",
			},
			{
				"<leader>cx",
				":CopilotChatInPlace<cr>",
				mode = "x",
				desc = "CopilotChat - Run in-place code",
			},
		},
	},
}
