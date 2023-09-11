let mapleader = ' '

set number
set relativenumber
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set scrolloff=5

set wrap
set showcmd
set wildmenu " display a menu when enter vim command
set smartcase
set nocompatible
set cursorline
set hidden
set updatetime=100
set textwidth=0
set indentexpr=
set autochdir
set autowrite
set sms
set backspace=indent,eol,start
set foldmethod=manual
set autoindent

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set hlsearch
set incsearch
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>

" 打开文件时光标放在上次退出的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
