" Author: Carlos Lezama

call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'zchee/deoplete-clang'

call plug#end()

colorscheme dracula

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline_left_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_right_sep = ''
let g:airline_theme = 'base16_dracula'
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-13/lib/libclang.so'
let g:deoplete#enable_at_startup = 1
let g:gitgutter_set_sign_backgrounds = 1
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'

map <A-Left> :bprev <CR>
map <A-Right> :bnext <CR>
map <C-w> :bd <CR>
map <F5> :! g++ -g % -o %:r <CR>
map <F6> :! g++ -g % -o %:r && ./%:r <CR>
map <F8> :! cd %:h/..; make && make run <CR>
map <F10> :%!astyle <CR>
map <S-Tab> <Over>(incsearch-prev)
map <C-space> :NERDTreeToggle %<CR>
map <Tab> <Over>(incsearch-next)
map ? <Plug>(incsearch-forward)

nnoremap <Esc><Esc> :<C-u>nohlsearch <CR>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

set cursorline
set encoding=utf-8
set guicursor=a:blinkon100
set noshowmode
set nu
set shiftwidth=4
set showtabline=2
set softtabstop=4
set termguicolors
set tabstop=4
set updatetime=250

