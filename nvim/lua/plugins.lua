	return require('packer').startup(function()
	--packer manager
	use 'wbthomason/packer.nvim'

	--colorscheme
	use 'olimorris/onedarkpro.nvim'

	--lualine (powerline alternative)
	use {
  	'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	--Language Server Protocol (language formatting)
	use 'neovim/nvim-lspconfig'

    --LSPKind (Prettier LSP, Works with CMP)
    use 'onsails/lspkind.nvim'

    --LSP CMP (Auto Complete Plugin)
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    --LSP Emmet (Emmet Shortcuts w/ Luasnip and CMP)
    use 'pedro757/emmet'

    --LSP CMP Luasnip (Snipper Plugin for LSP using CMP)
    use({"L3MON4D3/LuaSnip", tag = "v1.*"})
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    --LSPSaga (Code Actions and Others)
    use {"glepnir/lspsaga.nvim", branch = "main"}

    --Null LS (Support for 3rd Party Formatting/Linting)
    use('jose-elias-alvarez/null-ls.nvim')

    --Mason LSP Manager (Easy Installation and Management of LS)
    use {"williamboman/mason.nvim", build = ":MasonUpdate"}

    --Mason w/ LSP-Config (Adds APIs to make LSP Management Easier)
    use {"williamboman/mason-lspconfig.nvim"}

    --GitSigns (GitHub Support for Buffers)
    use {"lewis6991/gitsigns.nvim"}

	--Web Dev Icons (Icons for most UI heavy plugins)
	use 'nvim-tree/nvim-web-devicons'

	--Whichkey (UI to display potential commands)
	use 'folke/which-key.nvim'

	--Bufferline (Tabular Status Updates/Styling for open buffers)
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	--Telescope (Fuzzy File Finder/File Browser)
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

    --NVIM Tree (File Browser)
    use {'nvim-tree/nvim-tree.lua', requires={'nvim-tree/nvim-web-devicons'}, tag='nightly'}

    --Dashboard (Configured to use Telescope)
    use {'glepnir/dashboard-nvim'} 

	--Treesitter Autopair (Closes tags and indents, works with Treesitter)
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
