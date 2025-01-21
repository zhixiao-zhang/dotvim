vim9script

g:plugpac_plugin_conf_path = '~/.config/vim/rc/'
g:plugpac_default_type = 'delay'

plugpac#Begin({
  status_open: 'vertical',
  verbose: 2,
  quiet: v:false, # show no warning if any package is not installed
})

Pack 'tpope/vim-surround'
Pack 'gcmt/wildfire.vim'
Pack 'tpope/vim-unimpaired'
Pack 'airblade/vim-gitgutter'
Pack 'Eliot00/auto-pairs', { type: 'start' }
Pack 'tpope/vim-repeat'
# Pack 'yegappan/lsp', { 'for': ['c', 'cpp', 'python', 'bash', 'rust', 'markdown', 'html', 'css', 'json', 'vim'] }
Pack 'ludovicchabant/vim-gutentags', { 'for': ['c', 'cpp'] }
#   Github Copilot
Pack 'github/copilot.vim'
#   markdown
Pack 'iamcco/markdown-preview.nvim', {'do': 'packadd markdown-preview.nvim \| call mkdp#util#install()', 'for': 'markdown' }
Pack 'skywind3000/asyncrun.vim'
Pack 'ubaldot/vim-helpme'
Pack 'Donaldttt/fuzzyy'
Pack 'yegappan/lsp', { 'for': ['c', 'cpp', 'python', 'bash', 'rust', 'markdown', 'html', 'css', 'json', 'vim'] }
Pack 'girishji/vimcomplete'
#   code snippets
Pack 'hrsh7th/vim-vsnip'
Pack 'hrsh7th/vim-vsnip-integ'

plugpac#End()
