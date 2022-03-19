if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
    Plug 'SirVer/ultisnips'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'folke/lsp-colors.nvim'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'sophacles/vim-processing'
    Plug 'nvim-lua/popup.nvim'
    Plug 'preservim/nerdcommenter'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'onsails/lspkind-nvim'
    Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }
    Plug 'windwp/nvim-autopairs'
    Plug 'jiangmiao/auto-pairs'
    Plug 'windwp/nvim-ts-autotag'
endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()

