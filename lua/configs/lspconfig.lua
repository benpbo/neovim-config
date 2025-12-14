local configs = require "nvchad.configs.lspconfig"

local on_init = configs.on_init
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = vim.lsp.config
local servers = { "html", "cssls", "ts_ls", "buf_ls", "clangd", "svelte", "csharp_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp] = {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig['pyright'] = {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
}

vim.lsp.handlers["textDocument/definition"] = require("csharpls_extended").handler
vim.lsp.handlers["textDocument/typeDefinition"] = require("csharpls_extended").handler
