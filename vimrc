call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set whichwrap+=<,>,[,]

set history=1000
set undolevels=1000
set number
set hidden

if has("gui_running")
    colorscheme railscasts
else
    colorscheme desert
endif

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/

filetype plugin on

let g:neocomplcache_enable_at_startup = 1
inoremap <expr><C-d>  neocomplcache#close_popup() . "\<C-d>"
inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
inoremap <expr><Right>  neocomplcache#close_popup() . "\<Right>"
inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
inoremap <expr><Up>  neocomplcache#close_popup() . "\<Up>"

" Identation config
set autoindent
set smartindent

set expandtab
set smarttab

set shiftwidth=4
set softtabstop=4
set tabstop=4


" Maps
nmap <silent> <F12> :NERDTreeToggle<CR>
nmap <silent> <F9> :EraseBadWhitespace<CR>

nmap r "_d
nmap rr "_dd

nmap <C-v> "+gP
nmap <C-a> ggVG

vmap r "_d


" Autocommands
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

