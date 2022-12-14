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

	--tree sitter (better highlighting)
	use {
        'nvim-treesitter/nvim-treesitter',
        	run = function()
            	local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            	ts_update()
        	end,
    	}
end)
