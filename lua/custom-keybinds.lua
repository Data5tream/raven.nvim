local vim = vim
local keyset = vim.keymap.set

local fn = require("functions")

keyset("n", "<leader>tw", fn.whitespace.toggle, { desc = "Toggle visible whitespace" })
