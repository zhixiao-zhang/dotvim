vim9script
# This file contains platform-independent plugins.
# Platform-specific plugins are put into config/platform/{platform}.vim

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
#########################
### Input enhancement ###
#########################
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'

#########################
### Language  Support ###
#########################
#   lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
#   tags
Plug 'ludovicchabant/vim-gutentags'
#   Github Copilot
Plug 'github/copilot.vim'
#   FZF and LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
#   code snippets
Plug 'honza/vim-snippets'
#   auto-pair
Plug 'jiangmiao/auto-pairs'

call plug#end()

if has('linux')
call plug#begin()
  Plug 'lilydjwg/fcitx.vim'
  Plug 'jasonccox/vim-wayland-clipboard'
call plug#end()
endif
