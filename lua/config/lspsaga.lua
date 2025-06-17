local vim = vim
local lspsaga = require("lspsaga")

lspsaga.setup({
    ui = {
        code_action = "",
    },
    lightbulb = {
        sign = false,
        virtual_text = true,
    }
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "gh", "<cmd>Lspsaga finder<CR>", opts)          -- smart symbol finder
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts) -- go to definition
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", opts) -- peek definition
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)        -- hover doc
keymap("n", "<space>c", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<space>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
