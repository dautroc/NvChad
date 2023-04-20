local overrides = require("custom.configs.overrides")

local plugins = {

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup( { clear_empty_lines = true })
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },

  {
    "folke/which-key.nvim",
    config = function()
      require "plugins.configs.whichkey"
      require "custom.configs.whichkey"
    end,
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },

  { "tpope/vim-projectionist", event = "VeryLazy" },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },

  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end
  },

  {
    "roobert/search-replace.nvim",
    config = function()
      require('search-replace').setup()
    end
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("custom.configs.copilot")
    end,
  },

  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },

  { "kdheepak/lazygit.nvim", event = "VeryLazy" },

  { "tiagovla/scope.nvim", event = "VeryLazy" }, -- Using tab

  { "tpope/vim-fugitive", event = "VeryLazy" },

  { "tpope/vim-rhubarb", event = "VeryLazy" },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvterm",
  --   enabled = false
  -- },
}

return plugins
