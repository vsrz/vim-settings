set tabstop=4
set expandtab
set background=dark
set number
set incsearch
set nopaste
set autoindent
set fileformats=unix,dos
set comments=sr:/*,mb:*,ex:*/
syntax on
filetype on
filetype plugin on
autocmd FileType php noremap &lt;C-L&gt; :!/usr/bin/env php -l %&lt;CR&gt;

" Browser
command NT NERDTree
