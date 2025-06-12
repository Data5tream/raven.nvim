local vim = vim

local keyset = vim.keymap.set

keyset("n", "<leader>n", ":NERDTreeFocus<CR>", { noremap = true, silent = true })
keyset("n", "<C-t>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- Detect if input is from stdin
vim.api.nvim_create_autocmd("StdinReadPre", {
    pattern = "*",
    callback = function()
        vim.g.std_in = 1
    end,
})

-- Start NERDTree if no files were passed and input is not from stdin
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.argc() == 0 and vim.g.std_in ~= 1 then
            vim.cmd("NERDTree")
        end
    end,
})

-- Exit if NERDTree is the last open buffer
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.tabpagenr("$") == 1
            and vim.fn.winnr("$") == 1
            and vim.b.NERDTree
            and vim.b.NERDTree.isTabTree
        then
           -- feedkeys simulates typing ":quit<CR>" then a backspace to clear command line
           vim.fn.feedkeys(":quit\n:\b")
        end
    end,
})
