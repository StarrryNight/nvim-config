-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    signs_staged = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
  keys = {
    { "<leader>gb", "<cmd>lua require('gitsigns').blame_line()<cr>", desc = "Blame Hunk" },
    { "<leader>gd", "<cmd>lua require('gitsigns').diffthis('~1')<cr>", desc = "Diff This" },
    { "]c", "<cmd>lua require('gitsigns').next_hunk()<cr>", desc = "Next Hunk" },
    { "[c", "<cmd>lua require('gitsigns').prev_hunk()<cr>", desc = "Prev Hunk" },
  },
}
