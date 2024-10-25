-- https://www.lazyvim.org/configuration/plugins
return {
  { "EdenEast/nightfox.nvim", enabled = false },
  {
    -- If you customize or configure colors, or if you upgrade the
    -- colorscheme and notice that it's not affecting the appearance,
    -- please run the :GithubThemeCompile command to compile the colorscheme.
    -- We are actively addressing this issue and appreciate your patience.
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
  },
  {
    -- Configuration doc: https://github.com/sainnhe/sonokai/blob/master/doc/sonokai.txt
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      -- Style options: "default", "atlantis", "andromeda", "shusia", "maia"
      vim.g.sonokai_style = "andromeda"
      -- Enable Italics
      vim.g.sonokai_enable_italic = true
      -- Make Background Transparent
      vim.g.sonokai_transparent_background = 2
      -- Dim Active Windows
      vim.g.sonokai_dim_inactive_windows = 1
      -- Menu Selection Background: "blue", "green", "red"
      vim.g.sonokai_menu_selection_background = "blue"
    end,
  },
}
