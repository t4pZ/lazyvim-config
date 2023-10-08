return {
  "mfussenegger/nvim-lint",
  -- https://github.com/mfussenegger/nvim-lint
  enabled = true,
  opts = function(_, opts)
    local linters_by_ft = {
      -- this extends lazyvim's nvim-lint setup
      -- https://www.lazyvim.org/extras/linting/nvim-lint
      sh = { "shellcheck" },
      yaml = { "yamllint" },
      javascript = { "eslint_d", "ESLint" },
    }

    -- extend opts.linters_by_ft
    for ft, linters_ in pairs(linters_by_ft) do
      opts.linters_by_ft[ft] = opts.linters_by_ft[ft] or {}
      vim.list_extend(opts.linters_by_ft[ft], linters_)
    end
  end,
}
