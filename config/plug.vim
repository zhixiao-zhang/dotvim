""" My plug
call plug#begin()
"""""""""""""""""""""""""
""" Input enhancement """
"""""""""""""""""""""""""
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'


"""""""""""""""""""""""""
""" Language  Support """
"""""""""""""""""""""""""
"   lsp
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': 'CocStart'}
"   tags
Plug 'ludovicchabant/vim-gutentags'
"   Github Copilot
Plug 'github/copilot.vim'
"   FZF and LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"   code snippets
Plug 'honza/vim-snippets'

Plug 'sheerun/vim-polyglot'

call plug#end()

command! -nargs=0 CocLoad runtime! autoload/coc.vim

map <leader>cs :CocStart<CR>:CocLoad<CR>
