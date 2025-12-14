require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "buf_ls", "clangd", "svelte", "csharp_ls", "gopls", "GitHub Copilot" }
vim.lsp.enable(servers)

vim.lsp.config("GitHub Copilot", {})

