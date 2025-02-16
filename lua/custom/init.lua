local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- Terminal keymaps
-- function _G.set_terminal_keymaps()
--   local opts = {buffer = 0}
--   vim.keymap.set('t', 'jl', [[<C-\><C-n>]], opts)
--   vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
--   vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
--   vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
--   vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
--   vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
--
--   vim.keymap.set( 't', '<C-v>', function() require("nvterm.terminal").new "vertical" end, opts)
--   vim.keymap.set( 't', '<C-x>', function() require("nvterm.terminal").new "horizontal" end, opts)
-- end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Auto clear command line
autocmd("CmdlineLeave", {
	callback = function()
    print(" ")
	end
})

-- Disable virtual text and signs for diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = false,
})

-- vim-test strategy
vim.g['test#ruby#rspec#executable'] = 'bundle exec rspec'
vim.g['test#strategy'] = 'vimux'
