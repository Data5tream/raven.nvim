local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        "rust_analyzer",
        "ts_ls",
        "lua_ls",
        "html",
        "cssls",
        "ruff",
        "angularls",
        "eslint",
    }
})
