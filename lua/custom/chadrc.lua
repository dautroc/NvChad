---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest_light",
  theme_toggle = { "everforest_light", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,
    buttons = {},
    header = {
      [[      ___           ___           ___           ___                       ___     ]],
      [[     /\  \         /\  \         /\  \         /\__\          ___        /\  \    ]],
      [[    /::\  \       /::\  \       /::\  \       /:/  /         /\  \      /::\  \   ]],
      [[   /:/\ \  \     /:/\:\  \     /:/\:\  \     /:/__/          \:\  \    /:/\:\  \  ]],
      [[  _\:\~\ \  \   /:/  \:\  \   /::\~\:\  \   /::\  \ ___      /::\__\  /::\~\:\  \ ]],
      [[ /\ \:\ \ \__\ /:/__/ \:\__\ /:/\:\ \:\__\ /:/\:\  /\__\  __/:/\/__/ /:/\:\ \:\__\]],
      [[ \:\ \:\ \/__/ \:\  \ /:/  / \/__\:\/:/  / \/__\:\/:/  / /\/:/  /    \/__\:\/:/  /]],
      [[  \:\ \:\__\    \:\  /:/  /       \::/  /       \::/  /  \::/__/          \::/  / ]],
      [[   \:\/:/  /     \:\/:/  /         \/__/        /:/  /    \:\__\          /:/  /  ]],
      [[    \::/  /       \::/  /                      /:/  /      \/__/         /:/  /   ]],
      [[     \/__/         \/__/                       \/__/                     \/__/    ]],
    }
  },

  cheatsheet = { theme = "simple" },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
