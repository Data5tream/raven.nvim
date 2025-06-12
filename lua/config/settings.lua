local vim = vim

-- Colors and syntax highlighting
vim.opt.termguicolors = true
vim.cmd("syntax on")
vim.opt.background = "dark"

-- Tabs
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0

-- Line numbers and status
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.laststatus = 2

-- Clipboard
vim.opt.clipboard = "unnamedplus"
