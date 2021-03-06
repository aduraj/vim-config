" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'bitc/vim-bad-whitespace'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'lsdr/monokai'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/vim-slim.git'

" General
set hidden

set nocompatible
set whichwrap+=<,>,[,]
set history=1000
set undolevels=1000
set number

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

if has("gui_running")
    set lines=60
    set columns=220
    colorscheme monokai
    set showtabline=2
else
    colorscheme desert
endif

filetype plugin on

" Identation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Column line
if exists('+colorcolumn')
    set colorcolumn=121
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif

" Maps
nnoremap <C-b> <C-v>

nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG
vnoremap <C-a> <Esc> ggVG

vnoremap <C-c> "+y

vnoremap <C-x> "+d

nnoremap <C-v> "+p
vnoremap <C-v> "+p
inoremap <C-v> <Esc>"+pa

inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-s> :w<CR>

inoremap <C-l> <Esc>"+yya
nnoremap <C-l> "+yy

inoremap <C-d> <Esc>"_ddi
nnoremap <C-d> "_dd

inoremap <silent> <A-d> <ESC>:bd<CR>
nnoremap <silent> <A-d> :bd<CR>

nnoremap <silent> <A-Up> :wincmd k<CR>
nnoremap <silent> <A-Down> :wincmd j<CR>
nnoremap <silent> <A-Left> :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

nnoremap <A-R> <C-w>R
nnoremap <A-r> <C-w>r

" Smart home
function! ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction
nnoremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-O>:call ExtendedHome()<CR>

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Nerdtree tabs
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeDirArrows = 0
nnoremap <Leader>nt :NERDTreeTabsToggle<CR>

" Python syntastic
let g:syntastic_python_checker_args="--max-line-length=120"
let g:syntastic_python_flake8_args="--max-line-length=120"

" Bad whitespace
au BufWinEnter,WinEnter,FileType * HideBadWhitespace
nnoremap <Leader>we :EraseBadWhitespace<CR>
nnoremap <Leader>wt :ToggleBadWhitespace<CR>

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_regexp = 1

" Filetypes
au BufRead,BufNewFile *.hbs set filetype=html
au BufRead,BufNewFile *.less set filetype=less

" MiniBufExpl
autocmd VimEnter * MBEToggleMRU
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplVSplit = 35
let g:miniBufExplBRSplit = 1
nnoremap <silent> <C-Down> :MBEbb<CR>
nnoremap <silent> <C-Up> :MBEbf<CR>
inoremap <silent> <C-Down> <ESC>:MBEbb<CR>
inoremap <silent> <C-Up> <ESC>:MBEbf<CR>

