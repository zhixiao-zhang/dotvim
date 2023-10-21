"  vimspector
let g:vimspector_enable_mappings = 'HUMAN'

function! s:get_config_path(path_name)
    if has('mac')
    	return '~/.config/vim/' .. a:path_name
    elseif has('unix')
    	return '~/.vim/' .. a:path_name
	elseif has('win32')
		return '~\vimfiles\' .. a:path_name
    endif
endfunction

let s:c_path = s:get_config_path('vimspector_conf/c.json')
let s:python_path = s:get_config_path('vimspector_conf/python.json')

function! s:generate_vimspector_conf()
	if empty(glob('.vimspector.json'))
		if &filetype == 'c' || 'cpp'
			!cp s:c_path ./.vimspector.json
		elseif &filetype == 'python'
			!cp s:python_path ./.vimspector.json
		endif
	endif
	e .vimspector.json
endfunction

command! -nargs=0 VimspectorConf call s:generate_vimspector_conf()

noremap <silent> <F7> :call vimspector#StepInto()
