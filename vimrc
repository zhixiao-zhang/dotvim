vim9script
if has('termguicolors')
    set termguicolors
endif

set background=light
set number
set relativenumber
set encoding=utf-8
set scrolloff=5
set wrap
set wildmenu # display a menu when enter vim command
set smartcase
set nocompatible
set hidden
set listchars=tab:»·,trail:·,
set shiftwidth=2
set softtabstop=2
set tabstop=2
set	expandtab
set updatetime=50
set autochdir
set autowrite
set sms
set autoindent
set showcmd
set laststatus=0
set shortmess+=c
set backspace=indent,eol,start
set nolist
set nospell
set laststatus=2
set ruler
set hlsearch
set incsearch
exec "nohlsearch"

colorscheme light-pink

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
