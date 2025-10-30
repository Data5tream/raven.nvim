local vim = vim

local keyset = vim.keymap.set

-- keyset("n", "<leader>n", ":NERDTreeFocus<CR>", { noremap = true, silent = true })
keyset("n", "<leader>n", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

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

-- Prevent other buffers opening in the NERDTree buffer
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.winnr() ~= vim.fn.winnr("h") then
            return
        end

        local window_count = #vim.api.nvim_list_wins()
        local alt_buf_name = vim.fn.bufname("#")
        local cur_buf_name = vim.fn.bufname("%")

        local is_alt_nerdtree = alt_buf_name:match("NERD_tree_tab_%d+")
        local is_cur_nerdtree = cur_buf_name:match("NERD_tree_tab_%d+")

        if is_alt_nerdtree and not is_cur_nerdtree and window_count > 1 then
            local current_buffer = vim.api.nvim_get_current_buf()

            vim.cmd("buffer #")
            vim.cmd("wincmd w")
            vim.cmd("buffer " .. current_buffer)
        end
    end
})
