
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8 
set showtabline=2

" Begin scrolling the screen lines prior to the edge
set scrolloff=5

" Numbered lines
set nu

" Clipboard integration
set clipboard=unnamed

" Highlight current line
set cursorline

" Relative line numbering
" set rnu
" Show line endings and tab characters
set nolist

" Change the working directory based on the current open file
set autochdir


au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set guifont=Monaco:h12
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" PLUGINS
" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Git integration
Plugin 'tpope/vim-fugitive'

" NerdTREE for file browsing
Plugin 'scrooloose/nerdtree'

" CTRL-P Search
Plugin 'kien/ctrlp.vim'

" Fold code with space
Plugin 'tmhedberg/SimpylFold'
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Auto indent python
Plugin 'vim-scripts/indentpython.vim'

" Python automcomplete
Bundle 'Valloric/YouCompleteMe'

" Syntax highlighting
Plugin 'vim-syntastic/syntastic'

" Pep 8 checking
Plugin 'nvie/vim-flake8'

" Python syntax highlighting
let python_highlight_all=1
syntax on

" navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" navigate between buffers
nnoremap ] :bnext<CR>
nnoremap [ :bprevious<CR>
nnoremap \ :CtrlPBuffer<CR>

" Color scheming, use F5 to switch between light and dark
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
colorscheme molokai
" colorscheme macvim
call togglebg#map("<F5>")

