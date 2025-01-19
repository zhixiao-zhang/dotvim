vim9script
g:vimcomplete_tab_enable = 1

var options = {
  completor: {
    noNewlineInCompletionEver: v:true,
    noselect: true,
    showSource: v:false
  }
}

autocmd User * g:VimCompleteOptionsSet(options)
