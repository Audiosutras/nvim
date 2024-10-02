-- https://github.com/olimorris/codecompanion.nvim
return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
      "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
      { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves the default Neovim UI
    },
    config = true,
    cmd = "CodeCompanion",
    keys = {
      {
        mode = { "n" },
        "<C-a>",
        "<cmd>CodeCompanionActions<cr>",
        { noremap = true, silent = true },
        desc = "Code Companion Actions",
      },
      {
        mode = { "v" },
        "<C-a>",
        "<cmd>CodeCompanionActions<cr>",
        { noremap = true, silent = true },
        desc = "Code Companion Actions",
      },
      {
        mode = { "n" },
        "<Leader>a",
        "<cmd>CodeCompanionChat Toggle<cr>",
        { noremap = true, silent = true },
        desc = "Code Companion Chat",
      },
      {
        mode = { "v" },
        "<Leader>a",
        "<cmd>CodeCompanionChat Toggle<cr>",
        { noremap = true, silent = true },
        desc = "Code Companion Chat",
      },
      {
        mode = { "v" },
        "ga",
        "<cmd>CodeCompanionChat Add<cr>",
        { noremap = true, silent = true },
        desc = "Code Companion Chat Add",
      },
    },
    opts = {
      -- ollama has been set as the default adapter
      -- ollama models should be installed locally
      -- https://ollama.com/download
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
        agent = {
          adapter = "ollama",
        },
      },
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = {
                default = "stable-code:latest",
              },
            },
          })
        end,
      },
    },
  },
}
