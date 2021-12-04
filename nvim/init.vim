" Author: Carlos Lezama

set cursorline
set guicursor=a:blinkon100
set mouse=a
set nu
set shiftwidth=4
set softtabstop=4
set tabstop=4

call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_alt_sep = ''
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#right_alt_sep = ''
	let g:airline#extensions#tabline#right_sep = ''
	let g:airline_left_sep = ''
	let g:airline_powerline_fonts = 1
	let g:airline_right_sep = ''
	let g:airline_theme = 'base16_nord'
	set noshowmode
	set showtabline=2

Plug 'Yggdroot/indentLine'

Plug 'preservim/nerdtree'
	map <C-w> :bd<CR>
	map <S-t> :NERDTreeToggle<CR>

Plug 'airblade/vim-gitgutter'
	let g:gitgutter_set_sign_backgrounds = 1
	set updatetime=250

Plug 'haya14busa/incsearch.vim'
	map <C-f>  <Plug>(incsearch-forward)
	map <S-Tab> <Over>(incsearch-prev)
	map <Tab> <Over>(incsearch-next)
	map ?  <Plug>(incsearch-backward)
	map g/ <Plug>(incsearch-stay)
	nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

call plug#end()

colorscheme nord

if (has("termguicolors"))
  set termguicolors
endif

