local vim = vim
local M = {}

function M.toggle()
    vim.opt.list = not vim.opt.list:get()
    if vim.opt.list:get() then
        print("Whitespace visible")
    else
        print("Whitespace hidden")
    end
end
vim.api.nvim_create_user_command("ToggleWhitespace", M.toggle, {})

return M
