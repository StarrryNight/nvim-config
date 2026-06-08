return {
  {
    "ldelossa/gh.nvim",
    dependencies = {
      {
        "ldelossa/litee.nvim",
        config = function()
          require("litee.lib").setup({
            panel = {
              orientation = "left",
              panel_size = 40,
            },
          })
        end,
      },
    },
    -- Do not lazy load via keys or events so commands are always available safely
    lazy = false,
    config = function()
      -- CRITICAL FIX: The module name is actually 'litee.gh'
      require("litee.gh").setup()
    end,
    -- Map user shortcuts globally
    keys = {
      { "<leader>ghp", "<cmd>GHOpenPR<cr>", desc = "GitHub Open PR" },
      { "<leader>ghd", "<cmd>GHPRDetails<cr>", desc = "GitHub PR Details" },
      { "<leader>ghc", "<cmd>GHCollapsePR<cr>", desc = "GitHub Collapse PR" },
      { "<leader>ghr", "<cmd>GHStartReview<cr>", desc = "GitHub Start Review" },
      { "<leader>ghs", "<cmd>GHSubmitReview<cr>", desc = "GitHub Submit Review" },
      { "<leader>ghi", "<cmd>GHOpenIssue<cr>", desc = "GitHub Open Issue" },
    },
  },
}
