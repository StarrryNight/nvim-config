return 

{
  "folke/snacks.nvim",
  opts = {
    gh = {
      -- your gh configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        gh_issue = {
          -- your gh_issue picker configuration comes here
          -- or leave it empty to use the default settings
        },
        gh_pr = {
          -- your gh_pr picker configuration comes here
          -- or leave it empty to use the default settings
        }
      },
      win = {
        -- <a-w> (cycle_win) is captured by WezTerm before it reaches Neovim.
        -- <c-w>w doesn't work in the input box: <c-w> alone is already bound
        -- there (insert mode) to delete-word, so it fires before "w" arrives.
        input = {
          keys = {
            ["<c-l>"] = { "cycle_win", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<c-l>"] = "cycle_win",
          },
        },
        preview = {
          keys = {
            ["<c-l>"] = "cycle_win",
          },
        },
      },
    },
  },
  keys = {
    { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
    { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
    { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
    { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "GitHub Pull Requests (all)" },
  },
}

