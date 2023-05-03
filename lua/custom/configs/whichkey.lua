require("plugins.configs.whichkey")

local present, wk = pcall(require, "which-key")
if not present then
  return
end

wk.register(
  {
    ["<leader>"] = {
      b = { name = "+buffers" },
      f = { name = "+find" },
      m = { name = "+misc" },
      l = { name = "+lsp" },
      t = { name = "+term" },
      g = { name = "+git" },
      o = {
        name = "+obsidian",
        l = { name = "+links" },
      },
      r = {
        name = "+rails",
        t = { name = "+tests" },
      },
    }
  }
)

require("core.utils").load_mappings "whichkey"
