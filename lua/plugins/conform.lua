return {
  "stevearc/conform.nvim",
  -- https://github.com/stevearc/conform.nvim
  enabled = true,
  opts = function(_, opts)
    local formatters = require("conform.formatters")
    formatters.stylua.args =
      vim.list_extend({ "--indent-type", "Spaces", "--indent-width", "2" }, formatters.stylua.args)

    local formatters_by_ft = {
      -- this extends lazyvim's conform setup
      -- https://www.lazyvim.org/extras/formatting/conform
      lua = { "stylua" },
      sh = { "shfmt" },
      go = { "gofumpt", "gci" }, -- goimports is not needed as gci is used
      rust = { "rustfmt" },
      javascript = { { "prettierd", "prettier" } },
    }

    -- extend opts.formatters_by_ft
    -- NOTE: conform.nvim can use a sub-list to run only the first available formatter (see docs)
    for ft, formatters_ in pairs(formatters_by_ft) do
      opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
      vim.list_extend(opts.formatters_by_ft[ft], formatters_)
    end
  end,
}
