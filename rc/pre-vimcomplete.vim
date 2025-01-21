vim9script
g:vimcomplete_tab_enable = 1

var options = {
  completor: {
    noNewlineInCompletionEver: v:true,
    noselect: true,
    showSource: v:false
  },
  vsnip: { enable: true, priority: 10, maxCount: 5 },
  vimscript: { enable: true, priority: 11 }
}

autocmd VimEnter * timer_start(1, (_) => g:VimCompleteOptionsSet(options))
