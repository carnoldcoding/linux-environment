	return require('packer').startup(function()
	--packer manager
	use 'wbthomason/packer.nvim'

	--colorscheme
	use 'olimorris/onedarkpro.nvim'

	--closing brackets
	use 'm4xshen/autoclose.nvim'

	--lualine (powerline alternative)
	use {
  	'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	--Language Server Protocol (language formatting)
	use 'neovim/nvim-lspconfig'

	--Web Dev Icons (Icons for NVIM Tree Support)
	use 'nvim-tree/nvim-web-devicons'

	--Whichkey (UI to display potential commands)
	use 'folke/which-key.nvim'

	--NVIM Tree (File Tree Manuevering)
	use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}, tag = 'nightly'}

	--Bufferline (Tabular Status Updates/Styling for open buffers)
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	--Autopair (Closes tags and indents, works with Treesitter)
	use {'windwp/nvim-autopairs'}

	--Treesitter auto-tag
	use {'windwp/nvim-ts-autotag'}

	--Treesitter (better highlighting)
	use {'p00f/nvim-ts-rainbow'}

	 use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
end)
