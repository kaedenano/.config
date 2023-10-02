return {
  {
    -- lspconfig
    'neovim/nvim-lspconfig'
  },
	{
		-- nvim-tree
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	{
		-- Comment.nvim
		"numToStr/Comment.nvim",
	},
	{
		-- coc.nvim
		"neoclide/coc.nvim",
	},
	{
		-- nvim-telescope
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		-- nvim-cmp
		"hrsh7th/nvim-cmp",
	},
	{
		-- auto-session
    'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    }
  end
	},
	{
		-- indent-blankline
		-- 'lukas-reineke/indent-blankline.nvim'
	},

	{
		-- nvim-autopairs
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		-- nvim-ts-autotag
		"windwp/nvim-ts-autotag",
	},
	{
		-- nvim-treesitter
		"nvim-treesitter/nvim-treesitter",
	},
	{
		-- conform.nvim
		"stevearc/conform.nvim",
	},
  {
    -- vim-svelte
    'evanleck/vim-svelte',
  },
{
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}, {
  'nvim-lualine/lualine.nvim'
}
}
