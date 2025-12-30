return {
  lsp_fallback = true,

  formatters_by_ft = {
    css = { "prettier" },
    go = { "gofmt" },
    terraform = { "tofu_fmt" },
    html = { "prettier" },
    javascript = { "prettier" },
    lua = { "stylua" },
    proto = { "buf" },
    python = {
      "ruff_fix",
      "ruff_format",
      "ruff_organize_imports",
    },
    svelte = { "prettier" },
    typescript = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}
