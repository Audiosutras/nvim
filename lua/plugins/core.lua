-- https://www.lazyvim.org/configuration/plugins
return {
  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },
  -- colorschemes
  { "EdenEast/nightfox.nvim" },
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("flow").setup({
        transparent = true, -- Set transparent background.
        fluo_color = "green", --  Fluo color: pink, yellow, orange, or green.
        mode = "bright", -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
        aggressive_spell = false, -- Display colors for spell check.
      })

      vim.cmd("colorscheme flow")
    end,
  },
  -- transparency plugin for transparent backgrounds
  -- { "xiyaowong/transparent.nvim", lazy = false, opts = {
  --   extra_groups = { "NeoTreeNormal" },
  -- } },
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
      colorscheme = "flow",
    },
  },
}
