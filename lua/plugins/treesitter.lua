return {

	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter').setup {
				ensure_installed = { "go" },
				sync_install = true,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true }
			}

			require('nvim-treesitter').install {
				'go',
				'lua'
			}

			vim.api.nvim_create_autocmd('FileType', {
				pattern = { 'go', 'lua' },
				callback = function() vim.treesitter.start() end,
			})
		end
	}

}
