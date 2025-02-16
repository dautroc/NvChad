local present, wk = pcall(require, "which-key")
if not present then
  return
end

wk.register(
  {
    ["<leader>"] = {
      a = { name = "+alternatives" },
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
      },
    }
  }
)

require("core.utils").load_mappings "whichkey"
