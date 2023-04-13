---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { ":w<cr>", "save" },
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "find files" },
    -- vim tab navigation
    ["tt"] = { ":tabclose<cr>", "tab close", opts = { nowait = true } },
    ["tn"] = { ":tabnew<cr>", "tab new", opts = { nowait = true } },
    ["tk"] = { ":tabnext<cr>", "tab next", opts = { nowait = true } },
    ["tj"] = { ":tabprev<cr>", "tab prev", opts = { nowait = true } },
    -- hop configuration
    ["f"] = {
      ":lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
      "find current line forward",
    },
    ["F"] = {
      ":lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
      "find current line backword",
    },
    ["s"] = {
      ":HopWord<cr>",
      "find word",
    },
  },
}

return M
