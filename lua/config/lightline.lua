local vim = vim

vim.g.lightline = {
    colorscheme = "PaperColor",
    active = {
        left = {
            { "mode", "paste" },
            { "cocstatus", "gitbranch", "readonly", "filename", "modified" },
        },
    },
    component_function = {
        cocstatus = "coc#status",
        gitbranch = "FugitiveHead"
    },
}

