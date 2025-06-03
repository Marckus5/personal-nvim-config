require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "luals", "mypy", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
