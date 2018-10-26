set tabstop=4
set softtabstop=4
set shiftwidth=4
set laststatus=2
set autochdir
set scrolloff=5
set expandtab
set number
set incsearch
set nopaste
set ignorecase
set encoding=utf-8

" Autoindent for C code
" set cindent
set autoindent
set backspace=indent,start,eol
set guifont=Monaco:h13
"set guifont="Deja Vu Sans Mono:h15"

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" Hilite current line
set cursorline

" Relative line numbering
set rnu

" Show line endings and tab characters
set nolist

"set clipboard=unnamedplus
set clipboard=unnamed
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
"let g:molokai_original = 1
highlight StatusLine ctermbg=white ctermfg=darkgrey
"highlight LineNr ctermfg=darkgrey
"colorscheme evening
"colorscheme molokai
"colorscheme macvim
"colorscheme darkblue
colorscheme codeschool
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

" Buffer jumps
map ] :up<CR>:bn<CR>
map [ :up<CR>:bp<CR>

" Set filetype to bash
"map \ :set ft=sh<CR>

" Ctrl-Space clears search highlight
nnoremap <silent> <c-space> :set nonu<CR>

""""""""""""""""""""""""""""""
" neocomplcache - code autocompletion
"""
"let g:neocomplcache_enable_at_startup = 1

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Remap leader to space
let mapleader=" "
let g:mapleader=" "

" PHP-Doc
noremap <leader>pd :call PhpDoc()<CR>
"map <C-p> :call PhpDoc()<CR>

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
 
" navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" highlight unnecessary whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" PHP Syntax check
" autocmd BufWritePost *.php !php -d display_errors=on -l <afile>

" folding, use space to fold sections of code
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

function! Chgref()
    r~/.vim/blocks/chgref.txt
endfunction

function! BlockSection()
    r~/.vim/blocks/section.txt
endfunction

nmap <C-i> :call Chgref()<CR>
nmap <C-l> :call BlockSection()<CR>

" XML formatter
function! DoFormatXML() range
	" Save the file type
	let l:origft = &ft

	" Clean the file type
	set ft=

	" Add fake initial tag (so we can process multiple top-level elements)
	exe ":let l:beforeFirstLine=" . a:firstline . "-1"
	if l:beforeFirstLine < 0
		let l:beforeFirstLine=0
	endif
	exe a:lastline . "put ='</PrettyXML>'"
	exe l:beforeFirstLine . "put ='<PrettyXML>'"
	exe ":let l:newLastLine=" . a:lastline . "+2"
	if l:newLastLine > line('$')
		let l:newLastLine=line('$')
	endif

	" Remove XML header
	exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"

	" Recalculate last line of the edited code
	let l:newLastLine=search('</PrettyXML>')

	" Execute external formatter
	exe ":silent " . a:firstline . "," . l:newLastLine . "!xmllint --noblanks --format --recover -"

	" Recalculate first and last lines of the edited code
	let l:newFirstLine=search('<PrettyXML>')
	let l:newLastLine=search('</PrettyXML>')
	
	" Get inner range
	let l:innerFirstLine=l:newFirstLine+1
	let l:innerLastLine=l:newLastLine-1

	" Remove extra unnecessary indentation
	exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"

	" Remove fake tag
	exe l:newLastLine . "d"
	exe l:newFirstLine . "d"

	" Put the cursor at the first line of the edited code
	exe ":" . l:newFirstLine

	" Restore the file type
	exe "set ft=" . l:origft
endfunction
command! -range=% FormatXML <line1>,<line2>call DoFormatXML()



