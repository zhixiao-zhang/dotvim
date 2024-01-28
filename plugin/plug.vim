""" My plug
call plug#begin()
"""""""""""""""""""""""""
""" Input enhancement """
"""""""""""""""""""""""""
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'
Plug 'LunarWatcher/auto-pairs'

"""""""""""""""""""""""""
""" Language  Support """
"""""""""""""""""""""""""
"   lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"   tags
Plug 'ludovicchabant/vim-gutentags'
"   Github Copilot
Plug 'github/copilot.vim'
"   FZF and LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"   code snippets
Plug 'honza/vim-snippets'

call plug#end()

