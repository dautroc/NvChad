---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { ":w<cr>", "save" },
    ["<leader>q"] = { ":q<cr>", "quit" },
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "find files" },

    -- vim tab navigation
    ["tt"] = { ":tabclose<cr>", "tab close", opts = { nowait = true } },
    ["tn"] = { ":tabnew<cr>", "tab new", opts = { nowait = true } },
    ["tk"] = { ":tabnext<cr>", "tab next", opts = { nowait = true } },
    ["tj"] = { ":tabprev<cr>", "tab prev", opts = { nowait = true } },

    -- Keep cursor in the middle of the screen
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv"},
  },
}

M.hop = {
  n = {
    ["f"] = {
      ":lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
      "find current line forward",
    },
    ["F"] = {
      ":lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
      "find current line backward",
    },
    ["s"] = { ":HopWord<cr>", "find word" },
  },
}

M.lspconfig = {
  n = {
    ["<leader>lq"] = { vim.diagnostic.setloclist, "diagnostic setloclist" },
    ["<leader>la"] = { vim.lsp.buf.code_action, "code action" },
    ["<leader>lr"] = { vim.lsp.buf.rename, "rename" },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "format",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>ft"] = { ":Telescope terms<CR>", "find terms" },
    ["<leader>frm"] = { ":Telescope find_files cwd=app/models<CR>", "rails models" },
    ["<leader>frs"] = { ":Telescope find_files cwd=app/services<CR>", "rails services" },
    ["<leader>frc"] = { ":Telescope find_files cwd=app/controllers<CR>", "rails controllers" },
    ["<leader>fra"] = { ":Telescope find_files cwd=app/api<CR>", "rails api" },
    ["<leader>frp"] = { ":Telescope find_files cwd=app/policies<CR>", "rails policies" },
    ["<leader>fri"] = { ":Telescope find_files cwd=app/mailers<CR>", "rails mailer" },
    ["<leader>frf"] = { ":Telescope find_files cwd=app/factories<CR>", "rails factories" },
    ["<leader>frl"] = { ":Telescope find_files cwd=app/locales<CR>", "rails locales" },
  },
}

M.buffers = {
  n = {
    ["<leader>by"] = { ":let @+ = expand('%')<CR>", "yank buffer path" },
    ["<leader>bY"] = { ":let @+ = join([expand('%'),  line('.')], ':')<CR>","yank buffer path with line number" }
  },
}

M.misc = {
  n = {
    ["<leader>frm"] = { ":A", ":A" },
  },
}

return M
