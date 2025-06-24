local vim = vim
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function setup_lsp_server(server_name, config)
    config = config or {}
    config.capabilities = capabilities
    vim.lsp.config(server_name, config)
end

setup_lsp_server("ruff")
setup_lsp_server("rust_analyzer")
setup_lsp_server("ts_ls")
setup_lsp_server("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        }
    }
})
setup_lsp_server("angularls")
setup_lsp_server("eslint")
