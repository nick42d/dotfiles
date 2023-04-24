-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
--rust tools
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'timonv/vim-cargo'
-- slint vim tools
  use 'slint-ui/vim-slint'
--  use 'simrat39/rust-tools.nvim'
  
  use 'nvim-lua/plenary.nvim'
--  use 'mfussenegger/nvim-dap'
--autocomplete
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
-- themes  
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'gruvbox-community/gruvbox'
  use 'rebelot/kanagawa.nvim'
  use 'sainnhe/gruvbox-material'
--fzf
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
--lualine 
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
