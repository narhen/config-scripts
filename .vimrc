" henrinaa@student.matnat.uio.no
"
"

set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set showmode
set hlsearch
set autoread
set textwidth=80
set guifont=Monospace\ 9
set rulerformat=%l/%L(%p%%),%c
set cursorline

" For snipMate
filetype plugin on

syntax on
colorscheme molokai

" Comment lines with <F10> -- default is //
map <F10> :s/^/\/\/<CR>:nohls<CR>

" Uncomment lines with <F11>
" Works with: // /*  */  *  --  >   #   "   %   !   ;
map <S-F10> :s/\/\/\\|^--\\|^[ \t]*\/\*\\|^[ \t]*\*[ \t/]*\\|^[>#"%!;]//<CR>:nohls<CR>

vnoremap < <gv 
vnoremap > >gv 

" \h - nohls (remove search highlights)
" \H - hls   (set search highlights)
nmap \h :nohls<Enter>
nmap \H :set hls<Enter>

" Set up folding
set foldmethod=marker
set foldmarker={,}
" Open all folds
nmap \+ :set foldlevel=20<Enter>
" Close all folds
nmap \0 :set foldlevel=0<Enter>

" Auto insert } after {
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Compiling Java
autocmd FileType    java    map <F6> :w<CR>:!echo "-- Compiling %"; javac %<CR>
autocmd FileType    java    map <F7> <S-F7><CR>
autocmd FileType    java    map <S-F7> :!echo "-- Running %<"; java %<

" Compiling C/C++
autocmd FileType    c       map <F6> :w<CR>:!echo "-- Compiling %"; gcc -o %< %<CR>
autocmd FileType    cpp     map <F6> :w<CR>:!echo "-- Compiling %"; g++ -o %< %<CR>
autocmd FileType    c,cpp   map <F7> <S-F7><CR>
autocmd FileType    c,cpp   map <S-F7> :!echo "-- Running %<"; %<
autocmd FileType    c,cpp   map <F5> :w<CR> :make <CR>

" Options for taglist
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=35
nnoremap <silent> <F9> :TlistToggle<CR>

" Firefox-like tab shortcuts
nnoremap <silent> <C-TAB> :tabn<CR>
nnoremap <silent> <C-S-TAB> :tabp<CR>
