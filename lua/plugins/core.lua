return {
  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },
  -- colorschemes
  { "projek0n/github-nvim-theme" },
  { "rebelot/kanagawa.nvim" },
  -- Neotree additional configuration
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "left",
      },
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".git",
          },
          never_show = {},
        },
      },
    },
  },
  -- LazyVim additional configuration
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },
}
