" Author: Carlos Lezama

call plug#begin('~/.local/share/nvim/plugged')

" Plug 'cjrh/vim-conda'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme dracula

let g:NERDTreeGitStatusWithFlags=1
let g:NERDTreeShowHidden=1
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#right_alt_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline_left_sep=''
let g:airline_powerline_fonts=1
let g:airline_right_sep=''
let g:airline_theme='base16_dracula'
let g:gitgutter_set_sign_backgrounds=1

"map <silent> <F5> :! g++ -g % -o %:r <CR>
"map <silent> <F6> :! g++ -g % -o %:r && ./%:r <CR>
map <silent> <A-Down> :m+ <CR>
map <silent> <A-Left> :bprev <CR>
map <silent> <A-Right> :bnext <CR>
map <silent> <A-Up> :m-2 <CR>
map <silent> <C-c> <Plug>NERDCommenterToggle
map <silent> <C-space> :NERDTreeToggle %<CR>
map <silent> <C-w> :bd <CR>
map <silent> <F5> :! cd %:h/..; make && make run <CR>
map <silent> <F8> :%!astyle <CR>
map <silent> <S-Tab> <Over>(incsearch-prev)
map <silent> <Tab> <Over>(incsearch-next)
map <silent> ? <Plug>(incsearch-forward)

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <Esc><Esc> :<C-u>nohlsearch <CR>

set completeopt-=preview
set cursorline
set encoding=utf-8
set noshowmode
set nu
set shiftwidth=4
set showtabline=2
set softtabstop=4
set tabstop=4
set termguicolors
set updatetime=250

