function! s:source_files(path) abort
  let l:files = split(glob(a:path), '\n')
  for l:file in l:files
    if !empty(l:file)
      execute 'source' l:file
    endif
  endfor
endfunction

colorscheme light-pink

" Source general configuration files
call s:source_files('~/.config/vim/config/*.vim')

" Platform specific settings
if exists("s:path") == 0
    let s:path = '~/.config/vim/config/platform/' . (has('mac') ? 'mac' : 'linux') . '.vim'
    if !empty(s:path)
        call s:source_files(s:path)
    endif
endif
