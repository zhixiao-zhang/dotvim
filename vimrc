function! s:get_config_path(path_name) abort
    let config_path = has('mac') ? '~/.config/vim/' : (has('win32') ? '~\vimfiles\' : '~/.vim/')
    return config_path . a:path_name
endfunction

" Source all files in the specified path
function! s:source_files(path) abort
    for file in split(glob(a:path), '\n')
        exe 'source ' . file
    endfor
endfunction

colorscheme light-pink

" Source general configuration files
call s:source_files(s:get_config_path('config/*.vim'))

" Platform specific settings
if has('mac')
    let s:path = s:get_config_path('/config/platform/mac.vim')
    exe 'source ' . s:path
endif
