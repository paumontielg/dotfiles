" Author: Carlos Lezama

if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
    Plug 'L3MON4D3/LuaSnip'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'SirVer/ultisnips'
    Plug 'airblade/vim-gitgutter'
    Plug 'folke/lsp-colors.nvim'
    Plug 'haya14busa/incsearch.vim'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'jiangmiao/auto-pairs'
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'onsails/lspkind-nvim'
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/nerdtree'
    Plug 'sophacles/vim-processing'
    Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'tsony-tsonev/nerdtree-git-plugin'
    Plug 'windwp/nvim-autopairs'
    Plug 'windwp/nvim-ts-autotag'
endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()

