return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>jf", function()
			harpoon:list():add()
		end, { desc = "Add file to harpoon" })

		vim.keymap.set("n", "<leader>jj", function()
			harpoon:list():select(1)
		end, { desc = "Select harpoon window 1" })
		vim.keymap.set("n", "<leader>jk", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<leader>jl", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<leader>j;", function()
			harpoon:list():select(4)
		end)

		vim.keymap.set("n", "<leader>jd", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
	end,
}
