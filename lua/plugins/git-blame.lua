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
	},
}
