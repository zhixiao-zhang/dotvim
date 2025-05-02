vim9script

g:plugpac_plugin_conf_path = $MYVIMDIR .. 'rc/'
g:plugpac_default_type = 'delay'

plugpac#Begin({
  status_open: 'vertical',
  verbose: 2,
  quiet: v:false, # show no warning if any package is not installed
})
Pack 'k-takata/minpac', { 'type': 'opt' }
Pack 'tpope/vim-surround'
Pack 'gcmt/wildfire.vim'
Pack 'tpope/vim-unimpaired'
Pack 'airblade/vim-gitgutter'
Pack 'tpope/vim-repeat'
Pack 'ludovicchabant/vim-gutentags', { 'for': ['c', 'cpp'] }
Pack 'tmsvg/pear-tree'
#   Github Copilot
Pack 'github/copilot.vim'
Pack 'zhixiao-zhang/fuzzyy'
Pack 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Pack 'honza/vim-snippets'
# Pack 'zhixiao-zhang/lsp'
# Pack 'girishji/vimcomplete'
#   code snippets
# Pack 'hrsh7th/vim-vsnip'
# Pack 'hrsh7th/vim-vsnip-integ'

plugpac#End()
