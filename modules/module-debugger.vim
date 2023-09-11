"  vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

function! s:generate_vimspector_conf()
	if empty(glob('.vimspector.json'))
		if &filetype == 'c' || 'cpp'
			!cp ~/.vim/vimspector_conf/c.json ./.vimspector.json
		elseif &filetype == 'python'
			!cp ~/.vim/vimspector_conf/python.json ./.vimspector.json
		endif
	endif
	e .vimspector.json
endfunction

command! -nargs=0 VimspectorConf call s:generate_vimspector_conf()
