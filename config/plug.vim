vim9script
### My plug
call plug#begin()
#########################
#### UI  Enhancement ####
#########################
Plug 'obcat/vim-sclow'

#########################
### Input enhancement ###
#########################
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'


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
#   highlight
Plug 'sheerun/vim-polyglot'
#   latex
Plug 'lervag/vimtex'
#   auto-pair
Plug 'jiangmiao/auto-pairs'

call plug#end()
