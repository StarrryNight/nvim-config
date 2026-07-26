return {
	{
		"f-person/git-blame.nvim",
		-- Load the plugin on events so it doesn't slow down startup
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			enabled = true, -- Set to false if you only want it on demand
			message_template = " • <author> • <date> • <summary>",
			date_format = "%Y-%m-%d",
		},
		keys = {
			{ "<leader>gbt", "<cmd>GitBlameToggle<cr>", desc = "Toggle Git Blame Inline" },
			{ "<leader>gbo", "<cmd>GitBlameOpenCommitURL<cr>", desc = "Open Commit URL in Browser" },
			{ "<leader>gby", "<cmd>GitBlameCopySHA<cr>", desc = "Copy Commit SHA" },
		},
	},
}
