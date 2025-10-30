local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("nvim-lua/plenary.nvim")
Plug("neovim/nvim-lspconfig")
Plug("NLKNguyen/papercolor-theme")
Plug("nvim-tree/nvim-web-devicons")
Plug("mason-org/mason.nvim")
Plug("mason-org/mason-lspconfig.nvim")
Plug("folke/trouble.nvim")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-nvim-lua")
Plug("hrsh7th/cmp-cmdline")
Plug("preservim/nerdtree")
Plug("itchyny/lightline.vim")
Plug("tpope/vim-fugitive")
Plug("tpope/vim-commentary")
Plug("nvim-treesitter/nvim-treesitter")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("HiPhish/rainbow-delimiters.nvim")
Plug("lewis6991/gitsigns.nvim")
Plug("nvim-telescope/telescope.nvim", { ["branch"] = "0.1.x" })

vim.call("plug#end")

vim.cmd("silent! colorscheme PaperColor")
