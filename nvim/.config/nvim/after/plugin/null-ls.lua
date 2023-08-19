local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.terraform_fmt,
        null_ls.builtins.formatting.golines,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.gofumpt
    },
})
