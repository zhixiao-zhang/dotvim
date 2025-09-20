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
Pack 'tmsvg/pear-tree'
Pack 'Donaldttt/fuzzyy'
plugpac#End()
