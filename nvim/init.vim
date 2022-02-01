" Author: Carlos Lezama

call plug#begin('~/.local/share/nvim/plugged')

"Plug 'cjrh/vim-conda'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'sophacles/vim-processing'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'tyru/open-browser.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"autocmd FileType r map <F5> :! Rscript % <CR>
"inoremap <silent><expr> <C-space> coc#refresh()
"let g:airline_theme='base16_dracula'
"let g:loaded_python3_provider=1
"let g:python3_host_prog = '/usr/bin/python3'
"let g:python_host_prog = '/usr/bin/python2'
"map <F2> <Plug>(coc-rename)
"map <F5> :! g++ -g % -o %:r <CR>
"map <F6> :! g++ -g % -o %:r && ./%:r <CR>
"nmap gd <Plug>(coc-definition)
"nmap gi <Plug>(coc-implementation)
"nmap gr <Plug>(coc-references)
"nmap gy <Plug>(coc-type-definition)
"set background=dark
"set termguicolors

autocmd FileType processing map <F1> <Plug>(processing-keyword)
autocmd FileType processing map <F5> <Plug>(processing-run)

colorscheme dracula

let g:NERDTreeGitStatusWithFlags=1
let g:NERDTreeShowHidden=1
let g:UltiSnipsExpandTrigger='<A-space>'
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
let g:gitgutter_sign_added='●'
let g:gitgutter_sign_modified='●'
let g:gitgutter_sign_removed='●'
let g:gitgutter_set_sign_backgrounds=1
let g:processing_doc_style='web'

map <A-Down> :m+ <CR>
map <A-Left> :bprev <CR>
map <A-Right> :bnext <CR>
map <A-Up> :m-2 <CR>
map <C-c> <Plug>NERDCommenterToggle
map <C-e> :NERDTreeToggle %<CR>
map <C-w> :bd <CR>
map <Down> jzz
map <F8> :%!astyle <CR>
map <S-Tab> <Over>(incsearch-prev)
map <Tab> <Over>(incsearch-next)
map <Up> kzz
map ? <Plug>(incsearch-forward)

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <Esc><Esc> :<C-u>nohlsearch <CR>

set completeopt-=preview
set cursorline
set encoding=utf-8
set noshowmode
set noswapfile
set nu
set shiftwidth=4
set showtabline=2
set softtabstop=4
set tabstop=4
set updatetime=250

