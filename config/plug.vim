vim9script

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

#########################
### Language  Support ###
#########################
#   lsp
Plug 'neoclide/coc.nvim', {'branch': 'release', 'event': 'BufReadPre'}
#   tags
Plug 'ludovicchabant/vim-gutentags', { 'ft': ['c', 'cpp'] }
#   Github Copilot
Plug 'github/copilot.vim'
#   FZF and LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension', 'on': ['LeaderfFunction', 'LeaderfMru', 'LeaderfBuffer', 'LeaderfLine', 'LeaderfTag'] }
#   code snippets
Plug 'honza/vim-snippets', { 'for': ['c', 'cpp', 'python'] }
#   markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install', 'for': 'markdown' }
Plug 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }

call plug#end()
