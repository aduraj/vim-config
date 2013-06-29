" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" General
set nocompatible
set whichwrap+=<,>,[,]
set history=1000
set undolevels=1000
set number
set nohidden

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

if has("gui_running")
    colorscheme railscasts
    set winaltkeys=no
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
nnoremap <silent> <F12> :NERDTreeTabsToggle<CR>
inoremap <silent> <F12> <ESC>:NERDTreeTabsToggle<CR>

nnoremap <silent> <F9> :EraseBadWhitespace<CR>
inoremap <silent> <F9> <ESC>:EraseBadWhitespace<CR>a

vnoremap <C-d> "_d
nnoremap <C-d> "_dd
inoremap <C-d> <ESC>"_ddi

vnoremap <C-x> "+d
nnoremap <C-x> "+dd
inoremap <C-x> <ESC>"+ddi

vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yya

noremap <C-v> "+gp
inoremap <C-v> <C-r>+

nnoremap <C-a> ggVG
inoremap <C-a> <ESC>ggVG

noremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a

nnoremap <silent> <A-t> :tabnew<CR>
nnoremap <silent> <A-Left> :tabprevious<CR>
nnoremap <silent> <A-Right> :tabnext<CR>
nnoremap <silent> <A-c> :bdel<CR>

inoremap <silent> <A-t> <ESC>:tabnew<CR>a
inoremap <silent> <A-Left> <ESC>:tabprevious<CR>a
inoremap <silent> <A-Right> <ESC>:tabnext<CR>a
inoremap <silent> <A-c> <ESC>:bdel<CR>a

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
inoremap <expr><Right>  neocomplcache#close_popup() . "\<Right>"
inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
inoremap <expr><Up>  neocomplcache#close_popup() . "\<Up>"

" Nerdtree tabs
let NERDTreeIgnore = ['\.pyc$']

" CtrlP
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("t")': ['<c-t>'],
  \ }

" Python syntastic
let g:syntastic_python_checker_args="--max-line-length=120"

" Bad whitespace
au BufWinEnter,WinEnter,FileType * HideBadWhitespace

