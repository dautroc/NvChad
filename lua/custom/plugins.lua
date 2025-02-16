local overrides = require "custom.configs.overrides"

local plugins = {

  {
    "lewis6991/gitsigns.nvim",
    enabled = false,
  },

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
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    -- enabled = false,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup { clear_empty_lines = true }
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
      require("hop").setup { keys = "asdferhjklyu" }
    end,
  },

  {
    "folke/which-key.nvim",
    config = function()
      require "custom.configs.whichkey"
    end,
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
    enabled = false,
  },

  { "tpope/vim-rails", event = "VeryLazy" },

  { "tpope/vim-projectionist", event = "VeryLazy" },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end,
  },

  {
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup()
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require "custom.configs.copilot"
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

  { "tpope/vim-fugitive", event = "VeryLazy" },

  { "tpope/vim-rhubarb", event = "VeryLazy" },

  {
    "epwalsh/obsidian.nvim",
    event = "VeryLazy",
    config = function()
      require("obsidian").setup {
        dir = "~/Dropbox/obsidian",
        note_id_func = function(title)
          -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
          local suffix = ""
          if title ~= nil then
            -- If title is given, transform it into valid file name.
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          else
            -- If title is nil, just add 4 random uppercase letters to the suffix.
            for _ = 1, 4 do
              suffix = suffix .. string.char(math.random(65, 90))
            end
          end
          return tostring(os.time()) .. "-" .. suffix
        end,
        -- notes_subdir = "notes",
        daily_notes = {
          folder = "dailies",
        },
      }
    end,
  },

  {
    "nvim-telescope/telescope-project.nvim",
    event = "VeryLazy",
  },

  {
    "utilyre/barbecue.nvim",
    event = "VeryLazy",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },

  {
    "simrat39/symbols-outline.nvim",
    event = "BufRead",
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "gbprod/yanky.nvim",
    event = "VeryLazy",
    config = function()
      require("yanky").setup()
    end,
  },

  {
    "aserowy/tmux.nvim",
    config = function()
      return require("tmux").setup()
    end,
  },

  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup {
        use_default_keymaps = false,
      }
    end,
  },

  {
    "kevinhwang91/nvim-bqf",
    event = "VeryLazy",
  },

  {
    "junegunn/fzf",
    event = "VeryLazy",
    build = function()
      vim.fn["fzf#install"]()
    end,
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  {
    "wakatime/vim-wakatime",
    event = "VeryLazy",
  },

  { "nvim-telescope/telescope-media-files.nvim" },

  {
    "vim-test/vim-test",
    event = "VeryLazy",
    dependencies = { "preservim/vimux" },
  },

  {
    "NvChad/nvterm",
    enabled = false,
  },

  {
    "tomasky/bookmarks.nvim",
    event = "BufRead",
    config = function()
      require "custom.configs.bookmarks"
    end,
  },

  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
  },

  {
    "segeljakt/vim-silicon",
    event = "VeryLazy",
  },

  {
    "windwp/nvim-autopairs",
    config = function()
      require "custom.configs.autopairs"
    end,
  },

  {
    "willothy/veil.nvim",
    lazy = false,
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
      require "custom.configs.veil"
    end,
  },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },

  {
    "NvChad/nvim-colorizer.lua",
    init = function()
      require("core.utils").lazy_load "nvim-colorizer.lua"
    end,
    config = function(_, opts)
      require("colorizer").setup {
        user_default_options = {
          names = false,
        },
      }

      -- execute colorizer as soon as possible
      vim.defer_fn(function()
        require("colorizer").attach_to_buffer(0)
      end, 0)
    end,
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
}

return plugins
