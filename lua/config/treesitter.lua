local vim = vim

require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "lua",
        "python",
        "json",
        "markdown",
        "dockerfile",
        "html",
        "javascript",
        "jinja",
        "make",
        "php",
        "rust",
        "scss",
        "typescript",
    },
    highlight = { enable = true },
    indent = { enable = true },
}
