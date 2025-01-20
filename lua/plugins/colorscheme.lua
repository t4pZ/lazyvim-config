return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      transparent_background = true,
      term_colors = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
