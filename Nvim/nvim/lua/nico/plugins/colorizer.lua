return {
	"NvChad/nvim-colorizer.lua",
	-- event = { "BufEnter", "FileWritePost" },
	config = function()
		require("colorizer").setup()
	end,
}
