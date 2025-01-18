local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "vimdoc",
    "lua",
    "luadoc",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "svelte-language-server",
    "tailwindcss-language-server",
    "deno",
    "prettier",
    "html-lsp",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust
    "rust-analyzer",

    -- protobuf
    "buf-language-server",

    -- Python
    "pyright",
    "mypy",
    "ruff",

    -- C#
    "csharp-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
