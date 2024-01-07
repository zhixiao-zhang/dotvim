function! s:get_config_path(path_name)
    if has('mac')
    	return '~/.config/vim/' .. a:path_name
    elseif has('unix')
    	return '~/.vim/' .. a:path_name
    elseif has('win32')
        return '~\vimfiles\' .. a:path_name
    endif
endfunction

for file in split(glob(s:get_config_path('core/*.vim')), '\n')
    exe 'source' file
endfor

""" My plug
call plug#begin()
"""""""""""""""""""""""""
""" Input enhancement """
"""""""""""""""""""""""""
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'
Plug 'LunarWatcher/auto-pairs'

"""""""""""""""""""""""""
""" Language  Support """
"""""""""""""""""""""""""
"   lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"   tags
Plug 'ludovicchabant/vim-gutentags'
" highlighting improvements
"   Github Copilot
Plug 'github/copilot.vim'
"   FZF and LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"   code snippets
Plug 'honza/vim-snippets'

call plug#end()

" colorscheme
exe 'colorscheme ' .. color_name

" add modules
for file in split(glob(<SID>get_config_path('modules/*.vim')), '\n')
    exe 'source' file
endfor

for file in split(glob(<SID>get_config_path('config/plugin/*.vim')), '\n')
    exe 'source' file
endfor

" Platform specific settings
if has('mac')
    let s:path = <SID>get_config_path('platform/mac.vim')
    exe 'source' s:path
endif

" Language specific settings
autocmd FileType c,cpp source ~/.vim/lang/c_cpp.vim
autocmd FileType c,cpp source ~/.vim/syntax/c.vim
autocmd FileType haskell source ~/.vim/lang/haskell.vim
autocmd FileType ocaml source ~/.vim/lang/ocaml.vim
