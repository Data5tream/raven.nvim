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

-- Line limits
vim.opt.colorcolumn = { 100 }
vim.opt.textwidth = 100

-- Line numbers and status
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.laststatus = 2

-- Filetype detection
vim.cmd("filetype plugin indent on")

-- Custom filetypes
vim.api.nvim_create_augroup("FileTypeDetect", { clear = true })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.njk",
    callback = function()
        vim.opt.filetype = "html"
    end,
    group = "FileTypeDetect",
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.service", "*.container", "*.network", "*.volume" },
    callback = function()
        vim.opt.filetype = "systemd"
    end,
    group = "FileTypeDetect",
})
