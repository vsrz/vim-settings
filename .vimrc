set tabstop=4
set softtabstop=4
set shiftwidth=4
set laststatus=2
set autochdir
set expandtab
set background=dark
set number
set incsearch
set nopaste
set autoindent
"set lazyredraw
set fileformats=unix,dos
set comments=sr:/*,mb:*,ex:*/
syntax on
filetype on
filetype plugin on
autocmd FileType php noremap &lt;C-L&gt; :!/usr/bin/env php -l %&lt;CR&gt;
set t_Co=256

" Colors
"let g:slate = 1
let g:molokai_original = 1
highlight StatusLine ctermbg=white ctermfg=darkgrey
highlight LineNr ctermfg=darkgrey

" Browser
command NT NERDTree

" CWD Jumps
nnoremap <leader>gcc7 :cd ~/adicio/projects/cc7/devops<CR>
nnoremap <leader>gplatform :cd ~/adicio/projects/platform/devops<CR>
nnoremap <leader>gcc6 :cd ~/adicio/projects/cc6/devops<CR>
nnoremap <leader>gadicio6 :cd ~/adicio/projects/adicio/devops<CR>

" Ctrl-Space clears search highlight
nnoremap <silent> <c-space> :nohl<CR>

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" PHP-Doc
noremap <leader>pd :call PhpDoc()<CR>
map <C-p> :call PhpDoc()<CR>

" PHP Syntax check
map <C-l> :!php -l %<CR>
