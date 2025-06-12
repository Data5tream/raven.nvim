local vim = vim

vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("ibl").setup {
      indent = { char = "│" },
      scope = { enabled = true },
}
