vim9script
g:mapleader = ' '
set number
set relativenumber
set encoding=utf-8
set scrolloff=5
set wrap
set wildmenu # display a menu when enter vim command
set smartcase
set nocompatible
set cursorline
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

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set hlsearch
set incsearch
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>

# Disable auto-commenting new lines
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    # This can be done as well instead of the previous line, for setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END

# 打开文件时光标放在上次退出的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
au BufRead *.md setf gcc-rtl
