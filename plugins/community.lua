return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", opts = { lazy = false } },
  { import = "astrocommunity.colorscheme.nightfox-nvim", opts = { lazy = false } },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", lazy = false },
  { import = "astrocommunity.colorscheme.everforest", opts = { lazy = false } },
  { import = "astrocommunity.colorscheme.vscode-nvim", lazy = false },
  { import = "astrocommunity.colorscheme.nvim-juliana", opts = { lazy = false } },
  { import = "astrocommunity.colorscheme.sonokai", opts = { lazy = false } },

  -- Copilot
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize the options set by the community
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  -- git stuff
  { "sindrets/diffview.nvim" },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = function() require("neogit").setup {} end,
    lazy = false,
  },
  -- Lua
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", opts = {} },

  -- Relevant plugin packs
  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.svelte" },
}
