return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	config = function()
		require("illuminate").configure({
			large_file_cutoff = 1000,
			case_insensitive_regex = true,
		})
	end,
}
