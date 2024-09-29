vim9script
# This file contains platform-independent plugins.
# Platform-specific plugins are put into config/platform/{platform}.vim

if empty(glob('~/.config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs
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
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'sainnhe/everforest'

#########################
### Language  Support ###
#########################
#   lsp
Plug 'neoclide/coc.nvim', {'branch': 'master'}
#   tags
Plug 'ludovicchabant/vim-gutentags'
#   Github Copilot
Plug 'github/copilot.vim'
#   FZF and LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
#   code snippets
Plug 'honza/vim-snippets'
#   markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install', 'for': 'markdown' }
#   Coq
Plug 'whonore/Coqtail', { 'for': 'coq' }

#########################
## Outside Integration ##
#########################
#   git
Plug 'tpope/vim-fugitive'

#########################
### Platform Specific ###
#########################
if has('linux')
  # switch to english input method when leaving insert mode
  Plug 'lilydjwg/fcitx.vim'
  # clipboard support for wayland
  Plug 'jasonccox/vim-wayland-clipboard'
endif
call plug#end()
