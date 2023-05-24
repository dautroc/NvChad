local opts = {
  fast_wrap = {},
  disable_filetype = { "TelescopePrompt", "vim" },
}

local npairs = require "nvim-autopairs"
npairs.setup(opts)

-- setup cmp for autopairs
local cmp_autopairs = require "nvim-autopairs.completion.cmp"
require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- add rules
npairs.add_rules(require "nvim-autopairs.rules.endwise-ruby")
npairs.add_rules(require "nvim-autopairs.rules.endwise-lua")
