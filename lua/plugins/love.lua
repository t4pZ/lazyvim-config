return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        lua_ls = {
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                -- This allows lua_ls to find the Love2D definitions
                library = {
                  vim.env.VIMRUNTIME,
                  "${3rd}/love2d/library",
                },
                -- Crucial: prevent it from blocking/prompting for confirmation
                checkThirdParty = false,
              },
              diagnostics = {
                globals = { "love" },
              },
            },
          },
        },
      },
    },
  },
}
