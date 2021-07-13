" Disable compatibility with vi which can cause unexpected issues
set nocompatible

"Enable type file detection. Vim will be able to try to detect the type of the
"file in use.
filetype on

"Enable plugins and load plugin for the detected filetype
filetype plugin on

"Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on
syntax on

" Add numbers to each line on the left-hand side
set number
set relativenumber

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs
set expandtab

" Do not save backup files
set nobackup

" Do not wrap lines
set nowrap

" While searching through file, incrementally highlight matching characters as
" you type
set incsearch

" Ignore capital letters during search
set ignorecase

"Override above if searching for capitals
set smartcase
set smarttab
set smartindent
set autoindent
set showtabline=4

" Show partial command you type in the last line of the screen
set showcmd

" Show mode on last line
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

set history=1000

" File search autocompletion
set wildmenu
set wildmode=list:longest

" required to keep multiple buffers open
set hidden

set encoding=utf-8

set ruler

set cmdheight=2

set splitbelow
set splitright

" support 256 colors
set t_Co=256



" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'

    Plug 'preservim/nerdtree'

    Plug 'rust-lang/rust.vim'

    Plug 'vim-syntastic/syntastic'

    Plug 'preservim/tagbar'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    Plug 'ayu-theme/ayu-vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rustfmt_autosave = 1

set termguicolors
let ayucolor="dark"
colorscheme ayu

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}

