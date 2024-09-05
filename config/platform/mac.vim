vim9script
# change the input method to Keyboard ABC when pushing the ESC.

var lastStatus = 'com.apple.keylayout.ABC'

def IMLeave()
  lastStatus = system('/usr/local/bin/im-select')
  exe ':silent !/usr/local/bin/im-select com.apple.keylayout.ABC'
enddef

def IMEnter()
  if lastStatus != 'com.apple.keylayout.ABC'
    exe ':silent !/usr/local/bin/im-select ' .. lastStatus
  endif
enddef

autocmd InsertLeave * if &filetype != 'markdown' | exe ':silent !/usr/local/bin/im-select com.apple.keylayout.ABC' | endif
autocmd FileType markdown autocmd InsertLeave <buffer> call IMLeave()
autocmd FileType markdown autocmd InsertEnter <buffer> call IMEnter()
