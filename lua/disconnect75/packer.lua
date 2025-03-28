-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use ('wbthomason/packer.nvim')

  use ({
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

-- Assorted Themes
-- Uncomment here and also the relevant files in nvim/after/plugin/
  --[[
    use ({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    ]]

  use({
      "craftzdog/solarized-osaka.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
  })

  --[[
  use ({
      "maxmx03/solarized.nvim",
  })
  ]]

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')
  use('sharkdp/fd')
  use('BurntSushi/ripgrep')
  use('preservim/nerdtree')
  use('mfussenegger/nvim-dap')
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  use ({
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lsp'},     -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional
		  {'hrsh7th/cmp-cmdline'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  })

  use('easymotion/vim-easymotion')

end)
