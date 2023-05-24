local quotes = {
  "Programs must be written for people to read, and only incidentally for machines to execute. -Harold Abelson",
  "The best way to predict the future is to invent it. -Alan Kay",
  "Good code is its own best documentation. As you’re about to add a comment, ask yourself, ‘How can I improve the code so that this comment isn’t needed?’ -Steve McConnell",
  "The best code is no code at all. -Jeff Atwood",
  "The most disastrous thing that you can ever learn is your first programming language. -Alan Kay",
  "When in doubt, use brute force. -Ken Thompson",
  "First, solve the problem. Then, write the code. -John Johnson",
  "Any fool can write code that a computer can understand. Good programmers write code that humans can understand. -Martin Fowler",
  "Measuring programming progress by lines of code is like measuring aircraft building progress by weight. -Bill Gates",
  "Truth can only be found in one place: the code. -Robert C. Martin",
  "The computer is incredibly fast, accurate, and stupid. Man is incredibly slow, inaccurate, and brilliant. The marriage of the two is a force beyond calculation. -Leo Cherne",
  "If at first you don’t succeed; call itversion 1.0. -Unknown",
  "Programming is not about typing, it's about thinking. -Rich Hickey",
  "Learning to code is useful no matter what your career ambitions are. -Arianna Huffington",
  "The best thing about a boolean is even if you are wrong, you are only off by a bit. -Unknown",
  "The computer was born to solve problems that did not exist before. -Bill Gates",
  "Talk is cheap. Show me the code. -Linus Torvalds",
  "The best code is written with the heart, not the hands. -Unknown",
  "Debugging is like being a detective in a crime movie where you are also the murderer. -Filipe Fortes",
  "The best way to learn a new programming language is by writing programs in it. -Dennis Ritchie",
}

math.randomseed(os.time()) -- Initialize the random seed
local randomIndex = math.random(#quotes) -- Generate a random index
local randomQuote = quotes[randomIndex] -- Get a random quote

local builtin = require "veil.builtin"
local custom_header = {
  { "-- " .. randomQuote .. " --" },
  { "+- " .. randomQuote .. " --" },
  { "++ " .. randomQuote .. " --" },
  { "-+ " .. randomQuote .. " --" },
  { "-- " .. randomQuote .. " ++" },
  { "-- " .. randomQuote .. " -+" },
  { "++ " .. randomQuote .. " --" },
  { "-+ " .. randomQuote .. " --" },
}

require("veil").setup {
  sections = {
    builtin.sections.animated(custom_header, {
      hl = { fg = "#5de4c7" },
    }),
    builtin.sections.buttons {
      {
        icon = "",
        text = "Find Files",
        shortcut = "f",
        callback = function()
          require("telescope.builtin").find_files()
        end,
      },
      {
        icon = "",
        text = "Find Word",
        shortcut = "w",
        callback = function()
          require("telescope.builtin").live_grep()
        end,
      },
      {
        icon = "",
        text = "Recent files",
        shortcut = "r",
        callback = function()
          require("telescope.builtin").oldfiles()
        end,
      },
      {
        icon = "",
        text = "Config",
        shortcut = "c",
        callback = function()
          require("telescope").extensions.file_browser.file_browser {
            path = vim.fn.stdpath "config",
          }
        end,
      },
    },
  },
  mappings = {},
  startup = true,
  listed = false,
}
