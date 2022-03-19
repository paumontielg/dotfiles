" Author: Carlos Lezama

autocmd FileType processing map <F1> <Plug>(processing-keyword)
autocmd FileType processing map <F5> <Plug>(processing-run)
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
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
map s<down> <C-w>j
map s<left> <C-w>h
map s<right> <C-w>l
map s<up> <C-w>k
map sh <C-w>h
map sj <C-w>j
map sk <C-w>k
map sl <C-w>l
nmap <C-a> gg<S-v>G
nmap <C-w><down> <C-w>-
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <S-Tab> :tabprev<Return>
nmap <Space> <C-w>w
nmap <Tab> :tabnext<Return>
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
nmap te :tabedit
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <S-C-p> "0p
nnoremap <leader>d "_d
nnoremap dw vb"_d
nnoremap x "_x
vnoremap <silent> * :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy/<C-R><C-R>=substitute(
    \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy?<C-R><C-R>=substitute(
    \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>

