" Author: Carlos Lezama

autocmd!
scriptencoding utf-8
if !1 | finish | endif

au BufNewFile,BufRead *.es6 setf javascript
au BufNewFile,BufRead *.flow set filetype=javascript
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
au BufNewFile,BufRead *.tsx setf typescriptreact
au BufNewFile,BufRead *.zsh set filetype=zsh
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd InsertLeave * set nopaste
filetype plugin indent on
highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
let g:NERDTreeGitStatusWithFlags=1
let g:NERDTreeShowHidden=1
let g:UltiSnipsExpandTrigger='<A-space>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:gitgutter_set_sign_backgrounds=1
let g:processing_doc_style='web'
runtime ./maps.vim
runtime ./plug.vim
set ai
set autoindent
set background=dark
set backspace=start,eol,indent
set backupskip=/tmp/*,/private/tmp/*
set cmdheight=1
set encoding=utf-8
set expandtab
set exrc
set fileencodings=utf-8,sjis,euc-jp,latin
set formatoptions+=r
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw
set nobackup
set nocompatible
set nosc noru nosm
set noswapfile
set nowrap
set nu
set path+=**
set scrolloff=10
set shell=zsh
set shiftwidth=4
set showcmd
set si
set smarttab
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md
set t_BE=
set tabstop=4
set title
set updatetime=250
set wildignore+=*/node_modules/*
syntax enable

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

if exists("&termguicolors") && exists("&winblend")
    syntax enable
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
    let g:neosolarized_termtrans=1
    runtime ./colors/NeoSolarized.vim
    colorscheme NeoSolarized
endif

if has('nvim')
    set inccommand=split
endif

if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
        runtime ./macos.vim
    endif
endif

if &term =~ "screen"
autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
autocmd VimLeave * silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

