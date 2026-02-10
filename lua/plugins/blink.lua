return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },

	version = '1.*',
	opts = {
		keymap = { preset = 'default' } ,

		apperance = {
			nerd_font_variant = 'mono'
		},

		completion = { documentation = { autoshow = false } },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}

