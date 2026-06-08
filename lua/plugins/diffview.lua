return {
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
		opts = {
			enhanced_diff_hl = true, -- See better diff highlights
			use_icons = true, -- Requires nvim-web-devicons
			view = {
				-- Configure the default layout templates
				default = {
					layout = "diff2_horizontal",
				},
				merge_tool = {
					-- Can be changed to "diff3_horizontal", "diff3_vertical", or "diff4_vertical"
					layout = "diff3_horizontal",
					disable_diagnostics = true, -- Turn off LSP diagnostics inside conflict splits
				},
			},
			file_panel = {
				listing_style = "tree", -- "tree" or "list"
				tree_options = {
					flatten_dirs = true,
					folder_statuses = "never",
				},
				win_config = {
					position = "left",
					width = 35,
				},
			},
		},
		-- Custom keymaps outside of the diff view panels
		keys = {
			{ "<leader>gdo", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
			{ "<leader>gdc", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
			{ "<leader>gdh", "<cmd>DiffviewFileHistory %<cr>", desc = "Current File History" },
			-- NEW: Master comparison keymaps added below
			{ "<leader>gdm", "<cmd>DiffviewOpen master...HEAD --imply-local<cr>", desc = "Diff Repo Against master" },
			{ "<leader>gdf", "<cmd>DiffviewOpen master -- %<cr>", desc = "Diff Current File Against master" },
		},
	},
}
