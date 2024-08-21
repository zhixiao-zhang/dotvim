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
Plug 'airblade/vim-gitgutter'

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
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons', { 'on':  'NERDTreeToggle' }

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install', 'for': 'markdown' }

if has('linux')
  # switch to english input method when leaving insert mode
  Plug 'lilydjwg/fcitx.vim'
  # clipboard support for wayland
  Plug 'jasonccox/vim-wayland-clipboard'
endif

call plug#end()
