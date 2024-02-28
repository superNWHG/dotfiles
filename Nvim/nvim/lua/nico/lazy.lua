local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	install = {
		colorscheme = { "dracula" },
	},
	change_detaction = {
		notify = false,
	},
	{ import = "nico.plugins" },
	{ import = "nico.plugins.lsp" },
})
