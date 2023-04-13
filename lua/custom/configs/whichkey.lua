require("plugins.configs.whichkey")

local present, wk = pcall(require, "which-key")
if not present then
  return
end

wk.register(
  {
    ["<leader>"] = {
      f = {
        name = "+find",
        r = { name = "+rails" },
      },
      m = { name = "+misc" },
      l = { name = "+lsp" },
      g = { name = "+git" },
    }
  }
)

require("core.utils").load_mappings "whichkey"
