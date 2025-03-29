-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use 'Mofiqul/dracula.nvim'
  use({ 'rose-pine/neovim', as = 'rose-pine' })

  use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use({'mbbill/undotree'})

  use({
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
  })

  use({'github/copilot.vim'})

end)


