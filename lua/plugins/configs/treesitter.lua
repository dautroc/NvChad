loadfile(vim.g.base46_cache .. "syntax")()
loadfile(vim.g.base46_cache .. "treesitter")()

local options = {
  ensure_installed = {
    "lua",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true,
  },
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

require("nvim-treesitter.configs").setup(options)
