local lspconf = require("nvchad.configs.lspconfig")
lspconf.defaults()


local servers = { "html", "cssls", "luals", "mypy", "pyright", "clangd", }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
