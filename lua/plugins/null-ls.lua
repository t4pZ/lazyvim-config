return {
  "nvimtools/none-ls.nvim",
  enabled = false,
  opts = function(_, opts)
    local nls = require("null-ls")
    vim.list_extend(opts.sources, {
      nls.builtins.formatting.gofumpt,
      nls.builtins.formatting.goimports_reviser,
      nls.builtins.formatting.golines,
    })
  end,
}
