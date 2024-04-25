return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
			theme = "doom", --  theme is doom and hyper default is hyper
			disable_move = false, --  default is false disable move keymap for hyper
			shortcut_type = "letter", --  shorcut type 'letter' or 'number'
			change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
			config = {
				header = {
					[[]],
					[[]],
					[[                                                                       ]],
					[[                                                                     ]],
					[[       ████ ██████           █████      ██                     ]],
					[[      ███████████             █████                             ]],
					[[      █████████ ███████████████████ ███   ███████████   ]],
					[[     █████████  ███    █████████████ █████ ██████████████   ]],
					[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
					[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
					[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
					[[                                                                       ]],
					[[]],
					[[]],
				},
				center = {
					{
						action = "ene | startinsert",
						desc = "  New File                              ",
						icon = "",
						key = "n",
					},
					{
						action = "Telescope find_files",
						desc = "  Find File",
						icon = "󰈞",
						key = "f",
					},
					{
						action = "lua require('persistence').load({ last = true })",
						desc = "  Open last session",
						icon = "󰑓",
						key = "s",
					},
					{
						action = "Telescope oldfiles",
						desc = "  Recent Files",
						icon = "",
						key = "r",
					},
					{
						action = "edit ~/.config/nvim",
						desc = "  Config",
						icon = "",
						key = "c",
					},
					{
						action = "Lazy",
						desc = "  Open Lazy",
						icon = "󰒲",
						key = "l",
					},
					{
						action = "qa",
						desc = "  Close NeoVim",
						icon = "",
						key = "q",
					},
				},
				footer = {
					"NeoVim - Nico",
				},
			}, --  config used for theme
			hide = {
				statusline = true, -- hide statusline default is true
				tabline = true, -- hide the tabline
				winbar = true, -- hide winbar
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
