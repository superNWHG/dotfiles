return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			style_preset = "default", -- or bufferline.style_preset.minimal,
			themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
			numbers = "ordinal",
			close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
			right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
			middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
			indicator = {
				icon = "▎", -- this should be omitted if indicator style is not 'icon'
				style = "icon",
			},
			max_name_length = 18,
			max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
			truncate_names = true, -- whether or not tab names should be truncated
			tab_size = 18,
			diagnostics = "nvim_lsp",
			diagnostics_update_in_insert = false,
			-- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
			-- NOTE: this will be called a lot so don't do any heavy processing here
			-- custom_filter = function(buf_number, buf_numbers)
			-- filter out filetypes you don't want to see
			-- if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
			--     return true
			-- end
			-- filter out by buffer name
			-- if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
			--     return true
			-- end
			-- filter out based on arbitrary rules
			-- e.g. filter out vim wiki buffer from tabline in your work repo
			-- if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
			--     return true
			-- end
			-- filter out by it's index number in list (don't show first buffer)
			-- if buf_numbers[1] ~= buf_number then
			--     return true
			-- end,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
					separator = true,
				},
			},
			color_icons = true, -- whether or not to add the filetype icon highlights
			get_element_icon = function(element)
				-- element consists of {filetype: string, path: string, extension: string, directory: string}
				-- This can be used to change how bufferline fetches the icon
				-- for an element e.g. a buffer or a tab.
				-- e.g.
				local icon, hl =
					require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
				return icon, hl
				-- or
				-- local custom_map = {my_thing_ft: {icon = "my_thing_icon", hl}}
				-- return custom_map[element.filetype]
			end,
			separator_style = "slope",
			always_show_bufferline = true,
			vim.keymap.set({ "n", "v" }, "<leader>b[", "<cmd>bprev<cr>", { desc = "Go to the previous buffer" }),
			vim.keymap.set({ "n", "v" }, "<leader>b]", "<cmd>bnext<cr>", { desc = "Go to the next buffer" }),
			vim.keymap.set(
				{ "n", "v" },
				"<leader>bd",
				"<cmd>bdelete<cr> <bar> <cmd>bnext<cr>",
				{ desc = "Close the current buffer" }
			),
		},
	},
}
