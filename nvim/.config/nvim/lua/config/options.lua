-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true

vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.termguicolors = true
