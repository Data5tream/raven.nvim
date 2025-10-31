local vim = vim
local M = {}

function M.format()
    vim.lsp.buf.format()
end

vim.api.nvim_create_user_command("FormatBuffer", M.format, {})

vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("LspFormat", { clear = true }),
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

return M
