return {
	"mistweaverco/kulala.nvim",
	keys = {
		{ "<leader>rs", desc = "Send request" },
	},
	ft = { "http", "rest" },
	opts = {
		-- your configuration comes here
		global_keymaps = true,
		global_keymaps_prefix = "<leader>r",
		kslala_keymaps_prefix = "",
	},
}
