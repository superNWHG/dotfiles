return {
	"superNWHG/dracula.nvim",
	priority = 1000, -- making sure this loads before all other plugins
	config = function()
		-- Load the colorscheme
		vim.cmd([[colorscheme dracula]])
	end,
}
