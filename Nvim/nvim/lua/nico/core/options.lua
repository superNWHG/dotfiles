vim.opt.termguicolors = true

-- line number options
vim.opt.relativenumber = false
vim.opt.number = true

-- use the right cursor when closing Neovim
vim.cmd([[
    augroup change_cursor
        au!
        au ExitPre * :set guicursor=a:hor25
    augroup END
]])

vim.opt.cursorline = true
vim.opt.confirm = true
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.cmd("set shiftwidth=2 smarttab")
vim.opt.tabstop = 2