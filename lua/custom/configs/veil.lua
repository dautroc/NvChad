local builtin = require "veil.builtin"
local custom_header = {
  { "-- The only way to do great work is to love what you do. --" },
  { "+- The only way to do great work is to love what you do. --" },
  { "++ The only way to do great work is to love what you do. --" },
  { "-+ The only way to do great work is to love what you do. --" },
  { "-- The only way to do great work is to love what you do. ++" },
  { "-- The only way to do great work is to love what you do. -+" },
  { "++ The only way to do great work is to love what you do. --" },
  { "-+ The only way to do great work is to love what you do. --" },
}

require("veil").setup {
  sections = {
    builtin.sections.animated(custom_header, {
      hl = { fg = "#5de4c7" },
    }),
    builtin.sections.buttons {
      {
        icon = "",
        text = "Find Files",
        shortcut = "f",
        callback = function()
          require("telescope.builtin").find_files()
        end,
      },
      {
        icon = "",
        text = "Find Word",
        shortcut = "w",
        callback = function()
          require("telescope.builtin").live_grep()
        end,
      },
      {
        icon = "",
        text = "Recent files",
        shortcut = "b",
        callback = function()
          require("telescope.builtin").oldfiles()
        end,
      },
      {
        icon = "",
        text = "Config",
        shortcut = "c",
        callback = function()
          require("telescope").extensions.file_browser.file_browser {
            path = vim.fn.stdpath "config",
          }
        end,
      },
    },
  },
  mappings = {},
  startup = true,
  listed = false
}
