-- set leader key to space
vim.g.mapleader = " "

vim.keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open the lazyvim UI" })

-- vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Switch to the window left" })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Switch to the window right" })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Switch to the window above" })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Switch to the window below" })

vim.keymap.set("n", "<leader>a", "<esc>ggvG<CR>", { desc = "Select all text" })
