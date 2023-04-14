---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-f>"] = { ":lua require('zen-mode').toggle({ window = { width = .5 }})<CR>", "focus window" },
    ["<leader>w"] = { ":w<CR>", "write" },
    ["<leader>q"] = { ":q<CR>", "quit" },
    ["<leader>Q"] = { ":qa<CR>", "quit all" },
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "find files" },

    -- vim tab navigation
    ["tt"] = { ":tabclose<CR>", "tab close", opts = { nowait = true } },
    ["tn"] = { ":tabnew<CR>", "tab new", opts = { nowait = true } },
    ["tk"] = { ":tabnext<CR>", "tab next", opts = { nowait = true } },
    ["tj"] = { ":tabprev<CR>", "tab prev", opts = { nowait = true } },

    -- keep cursor in the middle of the screen
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv"},
  },
  i = {
    ---- Undo break points
    ["_"] ={ "_<C-g>u" },
    [","] ={ ",<C-g>u" },
    ["."] ={ ".<C-g>u" },
    ["!"] ={ "!<C-g>u" },
    ["?"] ={ "?<C-g>u" },
    ["["] ={ "[<C-g>u" },
    ["]"] ={ "]<C-g>u" },
    ["{"] ={ "{<C-g>u" },
    ["}"] ={ "}<C-g>u" },
    ["("] ={ "(<C-g>u" },
    [")"] ={ ")<C-g>u" },
    [" "] ={ " <C-g>u" },
  }
}

M.hop = {
  n = {
    ["f"] = {
      ":lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.AFTER_CURSOR, current_line_only = true })<CR>",
      "find current line forward",
    },
    ["F"] = {
      ":lua require('hop').hint_char1({ direction = require('hop.hint').HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>",
      "find current line backward",
    },
    ["s"] = { ":HopChar2<CR>", "find word" },
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
    ["<leader>rta"] = { ":A<CR>", "open relative test"},
    ["<leader>rtv"] = { ":AV<CR>", "vopen relative test"},
    ["<leader>rtt"] = { ":AT<CR>", "topen relative test"},
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
    ["<leader>mt"] = { ":Telescope themes<CR>", "themes" },
  },
}

return M
