local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup({
    ensure_installed = {
        "prettier",
    }
})
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
        "pyright",
    }
})
