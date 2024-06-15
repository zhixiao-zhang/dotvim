vim9script
# This file contains platform-independent plugins.
# Platform-specific plugins are put into config/platform/{platform}.vim
call plug#begin()
#########################
### Input enhancement ###
#########################
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'
Plug 'skywind3000/vim-terminal-help'

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
#   latex
Plug 'lervag/vimtex'
#   auto-pair
Plug 'jiangmiao/auto-pairs'

#########################
#### UI enhancement #####
#########################
Plug 'tribela/vim-transparent'

call plug#end()
