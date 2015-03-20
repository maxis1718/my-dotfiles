syntax on
set nu
set background=dark
set cursorline

colorscheme grb256

" size of a hard tabstop
set tabstop=4

" size of an indent
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make tab insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

filetype on
au BufNewFile,BufRead *.ros set filetype=php
au BufNewFile,BufRead *.scss set filetype=css
au BufNewFile,BufRead *.dust set filetype=html
