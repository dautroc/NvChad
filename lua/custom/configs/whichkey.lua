require("plugins.configs.whichkey")

local present, wk = pcall(require, "which-key")
if not present then
  return
end

wk.register(
  {
    ["<leader>"] = {
      f = { name = "+find" },
      m = { name = "+misc" },
      l = { name = "+lsp" },
      g = { name = "+git" },
      b = { name = "+buffers" },
      r = {
        name = "+rails",
        t = { name = "+tests" },
      },
    }
  }
)

require("core.utils").load_mappings "whichkey"
