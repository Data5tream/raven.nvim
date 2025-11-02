local vim = vim
local keyset = vim.keymap.set

local telescope = require("telescope")
local trouble = require("trouble.sources.telescope")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<c-t>"] = trouble.open,
            },
            n = {
                ["<c-t>"] = trouble.open,
            }
        },
    },
})

-- Finders
keyset("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keyset("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })

-- LSP
keyset("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document symbols" })
keyset("n", "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<cr>",
    { desc = "Workspace symbols" }
)
keyset("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
keyset("n", "gi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Implementations" })
keyset("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Definitions" })
