-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("set nornu!")
vim.cmd([[
    augroup change_cursor
        au!
        au ExitPre * :set guicursor=a:hor25
    augroup END
]])
