-- https://www.lazyvim.org/configuration/plugins
return {
  { "EdenEast/nightfox.nvim", enabled=false },
  {
    -- If you customize or configure colors, or if you upgrade the 
    -- colorscheme and notice that it's not affecting the appearance, 
    -- please run the :GithubThemeCompile command to compile the colorscheme. 
    -- We are actively addressing this issue and appreciate your patience.
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
  },
  -- Background Transparency
  {"xiyaowong/transparent.nvim"}
}
