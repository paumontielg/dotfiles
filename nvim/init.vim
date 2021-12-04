" Author: Carlos Lezama

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'haya14busa/incsearch.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme nord
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline_left_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_right_sep = ''
let g:airline_theme = 'base16_nord'
let g:gitgutter_set_sign_backgrounds = 1
map <C-f>  <Plug>(incsearch-forward)
map <C-w> :bd<CR>
map <S-Tab> <Over>(incsearch-prev)
map <S-t> :NERDTreeToggle<CR>
map <Tab> <Over>(incsearch-next)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
set cursorline
set guicursor=a:blinkon100
set mouse=a
set noshowmode
set nu
set shiftwidth=4
set showtabline=2
set softtabstop=4
set termguicolors
set tabstop=4
set updatetime=250

