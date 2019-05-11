set mouse-=a
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set hidden

if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif

if !isdirectory($HOME."/.vim/vimundo")
    call mkdir($HOME."/.vim/vimundo", "", 0770)
endif

set undodir=~/.vim/vimundo
set undofile
