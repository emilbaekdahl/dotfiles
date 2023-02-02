vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'sheerun/vim-polyglot'
  use 'lifepillar/vim-solarized8'
  use {
    'nvim-tree/nvim-tree.lua',
    config = function() require('plugins.nvim_tree') end
  }

  use {
    'neovim/nvim-lspconfig',
    config = function() require('plugins.nvim_lspconfig') end
  }
  use {
    'hrsh7th/nvim-cmp',
    config = function() require('plugins.nvim_cmp') end,
    requires = { 'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip' }
  }

  use {
    'L3MON4D3/LuaSnip',
    config = function() require('plugins.luasnip') end
  }
  use 'rafamadriz/friendly-snippets'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require('plugins.nvim_treesitter') end
  }
end)
