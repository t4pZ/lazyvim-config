return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "tailwindcss-language-server",
      "gopls",
      "goimports",
      "golangci-lint",
      "golangci-lint-langserver",
    },
  },
}
