return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	--Language and Completion
	use 'neovim/nvim-lspconfig' 		-- Collection of configurations for built-in LSP client
	use 'hrsh7th/nvim-cmp' 			-- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' 		-- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' 	-- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' 			-- Snippets plugin
	use 'windwp/nvim-autopairs'
	use 'williamboman/nvim-lsp-installer' -- Neovim plug that allows you to manage LSP servers
	use 'rafamadriz/friendly-snippets'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'

	--Colorschemes
	use 'flazz/vim-colorschemes'

	--Navigation
	use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons',}, tag = 'nightly'}  -- optional, updated every week. (see issue #1193)
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0',}
	use {'nvim-lua/plenary.nvim'}
	use { "nvim-telescope/telescope-live-grep-args.nvim" }

	-- Whichkey
  	use 'max397574/which-key.nvim'

  	--Editing
	use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'} 
	use {'akinsho/toggleterm.nvim', branch = 'main'}
	use 'Vonr/align.nvim'

	--General
	use 'lewis6991/gitsigns.nvim'
	use 'numToStr/Comment.nvim'
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
	use 'voldikss/vim-floaterm'
	use 'sudormrfbin/cheatsheet.nvim'

	-- fun 
	use 'seandewar/killersheep.nvim'

end)
