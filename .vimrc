set tabstop=4
set softtabstop=4
set shiftwidth=4
set laststatus=2
set autochdir
set scrolloff=5
set expandtab
set background=dark
set number
set incsearch
set nopaste
set ignorecase
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
colorscheme molokai
"
" minibufexpl.vim settings
" .vim/plugins/minibufexpl.vim
"
" let g:miniBufExplModSelTarget = 1
" let g:miniBufExplModSelTarget = 0
" let g:miniBufExplUseSingleClick = 1
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplVSplit = 35
" let g:miniBufExplSplitBelow=1
"
" Browser
command NT NERDTree

" CWD Jumps
nnoremap <leader>cc7 :cd ~/adicio/projects/cc7/current<CR>
nnoremap <leader>platform :cd ~/adicio/projects/platform/current<CR>
nnoremap <leader>cc6 :cd ~/adicio/projects/cc6/current<CR>
nnoremap <leader>adicio6 :cd ~/adicio/projects/adicio/current<CR>

" Buffer jumps
map ] :bn<CR>
map [ :bp<CR>

" Ctrl-Space clears search highlight
nnoremap <silent> <c-space> :nohl<CR>

""""""""""""""""""""""""""""""
" neocomplcache - code autocompletion
"""
let g:neocomplcache_enable_at_startup = 1

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

" Ctrl-L removes highlighted text
map <C-l> :nohl<CR>

" Ctrl-J/K will move up and down by 5 lines
map <C-j> 5j
map <C-k> 5k

" Search results appear in the center of the screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
 
" PHP Syntax check
autocmd BufWritePost *.php !php -d display_errors=on -l <afile>
