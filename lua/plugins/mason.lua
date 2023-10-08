return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "svelte-language-server",
      "tailwindcss-language-server",
      "gopls",
      "goimports",
      "golangci-lint",
      "golangci-lint-langserver",
    },
  },
}
