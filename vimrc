" Pathogen
execute pathogen#infect()

" General
set nocompatible
set whichwrap+=<,>,[,]
set history=1000
set undolevels=1000
set number

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

if has("gui_running")
    colorscheme railscasts
    set showtabline=2
else
    colorscheme desert
endif

filetype plugin on

" Identation
set autoindent
set smartindent

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4
set tabstop=4

" Column line
if exists('+colorcolumn')
    set colorcolumn=120
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif

" Maps
nnoremap <silent> <Leader>n :NERDTreeTabsToggle<CR>
nnoremap <silent> <Leader>b :EraseBadWhitespace<CR>

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Nerdtree tabs
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore = ['\.pyc$']

" Python syntastic
let g:syntastic_python_checker_args="--max-line-length=120"

" Bad whitespace
au BufWinEnter,WinEnter,FileType * HideBadWhitespace

