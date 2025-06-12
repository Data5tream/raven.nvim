local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("NLKNguyen/papercolor-theme")
Plug("neoclide/coc.nvim", { ["branch"] = "release"})
Plug("preservim/nerdtree")
Plug("itchyny/lightline.vim")
Plug("tpope/vim-fugitive")
Plug("nvim-treesitter/nvim-treesitter")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("HiPhish/rainbow-delimiters.nvim")

vim.call("plug#end")

vim.cmd("silent! colorscheme PaperColor")
