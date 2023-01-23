-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  -- AST Plugin
  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

  -- Prettier
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP

  -- auto closing
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- Git Plugin
  use('tpope/vim-fugitive')

  -- LSP Plugins
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- File Explorer
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
  }

  -- tmux & split window navigation
  use("christoomey/vim-tmux-navigator")
  use("szw/vim-maximizer") -- maximizes and restores current window

  -- commenting files
  use("numToStr/Comment.nvim")

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
end)

