require("conform").setup {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "prettier" },
    typescript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    svelte = { "prettier" },

    proto = { "buf" },

    python = {
      "mypy",
      "ruff_fix",
      "ruff_format",
      "ruff_organize_imports",
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
