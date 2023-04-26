---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>ph"] = "",
    ["<leader>pt"] = "",

    ["<leader>td"] = "",
    ["<leader>th"] = "",

    ["<leader>ca"] = "",
    ["<leader>ch"] = "",
    ["<leader>cm"] = "",
    ["<leader>cc"] = "",

    ["<leader>wr"] = "",
    ["<leader>wa"] = "",
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",
    ["<leader>wl"] = "",

    ["<leader>b"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<leader>gt"] = "",
    ["<C-a>"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["H"] = { "^", "go to end of current line", opts = { nowait = true } },
    ["J"] = { "Jx", "join lines", opts = { nowait = true } },
    ["L"] = { "$", "go to start of current line", opts = { nowait = true } },

    ["<C-f>"] = { ":lua require('zen-mode').toggle({ window = { width = .5 }})<CR>", "focus window" },
    ["<C-v>"] = { "<C-w>v", "vsplit window" },
    ["<C-x>"] = { "<C-w>s", "hsplit window" },

    ["<leader>w"] = { ":w<CR>", "write" },
    ["<leader>q"] = { ":q<CR>", "quit buffer" },
    ["<leader>Q"] = { ":qa<CR>", "quit nvim" },
    ["<leader><tab>"] = { ":b#<CR>", "last buffer" },

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
    ["_"] = { "_<C-g>u" },
    [","] = { ",<C-g>u" },
    ["."] = { ".<C-g>u" },
    ["!"] = { "!<C-g>u" },
    ["?"] = { "?<C-g>u" },
    ["["] = { "[<C-g>u" },
    ["]"] = { "]<C-g>u" },
    ["{"] = { "{<C-g>u" },
    ["}"] = { "}<C-g>u" },
    ["("] = { "(<C-g>u" },
    [")"] = { ")<C-g>u" },
    [" "] = { " <C-g>u" },
  },
  v = {
    ["H"] = { "^", "go to end of current line", opts = { nowait = true } },
    ["L"] = { "$", "go to start of current line", opts = { nowait = true } },
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
    ["<leader>ls"] = { ":SymbolsOutline<CR>", "symbol toggle"}
  },
}

M.telescope = {
  n = {
    ["<leader>ft"] = { ":Telescope terms<CR>", "find terms" },
    ["<leader>fk"] = { ":Telescope keymaps<CR>", "find keymaps" },
    ["<leader>fl"] = { ":Telescope resume<CR>", "last find" },
    ["<leader>p"] = { ":Telescope project<CR>", "find project" },
    ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "find files" },
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
    ["<leader>rf"] = { ":Telescope find_files cwd=spec/factories<CR>", "rails factories" },
    ["<leader>rl"] = { ":Telescope find_files cwd=config/locales<CR>", "rails locales" },

    -- group test
    ["<leader>rta"] = { ":A<CR>", "open relative test"},
    ["<leader>rtv"] = { ":AV<CR>", "vopen relative test"},
    ["<leader>rtt"] = { ":AT<CR>", "topen relative test"},
    ["<leader>rtf"] = {
      function()
        require("nvterm.terminal").send("bundle exec rspec " .. vim.fn.expand("%"), "vertical")
      end,
      "test file"
    },
    ["<leader>rtn"] = {
      function()
        require("nvterm.terminal").send("bundle exec rspec " .. vim.fn.expand("%") .. ":" .. vim.fn.line("."), "vertical")
      end,
      "test nearest"
    }
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
    ["<leader>mt"] = { ":Telescope themes<CR>", "find themes" },
    ["<leader>mm"] = { ":lua require('base46').toggle_theme()<CR>", "toggle theme" },
  },
}

M.git = {
  n = {
    ["<leader>gg"] = { ":LazyGit<CR>", "lazygit" },
    ["<leader>gf"] = { ":LazyGitFilterCurrentFile<CR>", "Lazygit filter current file" },
    ["<leader>gs"] = { ":AdvancedGitSearch<CR>", "git advanced search" },
    ["<leader>gc"] = { ":Telescope git_commits <CR>", "git commits" },
    ["<leader>gy"] = { ":GBrowse<CR>", "open git link" },
    ["<leader>gb"] = { ":Git blame<CR>", "blame" },
    ["<leader>go"] = { ":Octo actions<CR>", "Octo actions" },
  },
  v = {
    ["<leader>gy"] = { ":GBrowse<CR>", "open git link" },
  }
}

M.nvterm = {
  n = {
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "new float term",
    },

    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "new horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "new vertical term",
    },
  },
}

M.obsidian = {
  n = {
    ["<leader>ot"] = { ":ObsidianToday<CR>" },
    ["<leader>oy"] = { ":ObsidianYesterday<CR>" },
    ["<leader>ob"] = { ":ObsidianBacklinks<CR>" },
    ["<leader>oo"] = { ":ObsidianOpen<CR>" },
    ["<leader>on"] = { ":ObsidianNew<CR>" },
    ["<leader>os"] = { ":ObsidianSearch<CR>" },
    ["<leader>of"] = { ":ObsidianQuickSwitch<CR>" },

    -- Obsidian Link
    ["<leader>oll"] = { ":ObsidianLink " },
    ["<leader>oln"] = { ":ObsidianLinkNew<CR>" },
    ["<leader>olf"] = { ":ObsidianFollowLink<CR>" },
  },
  v = {
    ["<leader>ot"] = { ":ObsidianToday<CR>" },
    ["<leader>oy"] = { ":ObsidianYesterday<CR>" },
    ["<leader>ob"] = { ":ObsidianBacklinks<CR>" },
    ["<leader>oo"] = { ":ObsidianOpen<CR>" },
    ["<leader>on"] = { ":ObsidianNew<CR>" },
    ["<leader>os"] = { ":ObsidianSearch<CR>" },
    ["<leader>of"] = { ":ObsidianQuickSwitch<CR>" },

    -- Obsidian Link
    ["<leader>oll"] = { ":ObsidianLink " },
    ["<leader>oln"] = { ":ObsidianLinkNew<CR>" },
    ["<leader>olf"] = { ":ObsidianFollowLink<CR>" },
  },
}

return M
