local vim = vim
local keyset = vim.keymap.set

local trouble = require("trouble")

trouble.setup()

keyset("n", "<leader>dd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer diagnostics" })
keyset("n", "<leader>dD", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics" })
keyset("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix list" })
keyset("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", { desc = "Location list" })
keyset("n", "<leader>xr", "<cmd>Trouble lsp_references<cr>", { desc = "LSP references" })
keyset("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right win.size.width=60<cr>",
    { desc = "Trouble sidebar" })
