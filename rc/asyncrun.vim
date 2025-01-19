vim9script

def g:RunCommand()
  const defaultCmd = 'make'
  var cmd = input('Command to Compile (default: make -k): ', 'make -k')
  if cmd == ''
    return
  else
    execute 'AsyncRun -cwd=<root> ' .. cmd
  endif
enddef

nnoremap <silent> <leader>pc :call RunCommand()<CR>
