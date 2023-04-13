---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { ":w<cr>", "save" },
    ["<leader>q"] = { ":q<cr>", "quit" },
    ["<leader>Q"] = { ":qa<cr>", "quit all" },
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "find files" },

    -- vim tab navigation
    ["tt"] = { ":tabclose<cr>", "tab close", opts = { nowait = true } },
    ["tn"] = { ":tabnew<cr>", "tab new", opts = { nowait = true } },
    ["tk"] = { ":tabnext<cr>", "tab next", opts = { nowait = true } },
    ["tj"] = { ":tabprev<cr>", "tab prev", opts = { nowait = true } },

    -- keep cursor in the middle of the screen
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
    ["s"] = { ":HopChar2<cr>", "find word" },
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
    ["<leader>fk"] = { ":Telescope keymaps<CR>", "find keymaps" },
    ["<leader>fl"] = { ":Telescope resume<CR>", "last find" },
  },
}

M.rails = {
  n = {
    ["<leader>rm"] = { ":Telescope find_files cwd=app/models<CR>", "rails models" },
    ["<leader>rs"] = { ":Telescope find_files cwd=app/services<CR>", "rails services" },
    ["<leader>rc"] = { ":Telescope find_files cwd=app/controllers<CR>", "rails controllers" },
    ["<leader>ra"] = { ":Telescope find_files cwd=app/api<CR>", "rails api" },
    ["<leader>rp"] = { ":Telescope find_files cwd=app/policies<CR>", "rails policies" },
    ["<leader>ri"] = { ":Telescope find_files cwd=app/mailers<CR>", "rails mailer" },
    ["<leader>rf"] = { ":Telescope find_files cwd=app/factories<CR>", "rails factories" },
    ["<leader>rl"] = { ":Telescope find_files cwd=app/locales<CR>", "rails locales" },

    -- group test
    ["<leader>rta"] = { ":A<cr>", "open relative test"},
    ["<leader>rtv"] = { ":AV<cr>", "vopen relative test"},
    ["<leader>rtt"] = { ":AT<cr>", "topen relative test"},
  },
}

M.buffers = {
  n = {
    ["<leader>by"] = { ":let @+ = expand('%')<CR>", "yank buffer path" },
    ["<leader>bY"] = { ":let @+ = join([expand('%'),  line('.')], ':')<CR>","yank buffer path with line number" },
  },
}

M.misc = {
  n = {
    ["<leader>mY"] = { ":let @+ = join([expand('%'),  line('.')], ':')<CR>","yank buffer path with line number" },
  },
}

return M
