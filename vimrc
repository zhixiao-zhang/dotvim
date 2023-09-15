" load core config
function! s:get_config_path(path_name)
    if has('mac')
    	return '~/.config/vim/' .. a:path_name
    elseif has('unix')
    	return '~/.vim/' .. a:path_name
    endif
endfunction

for file in split(glob(s:get_config_path('core/*.vim')), '\n')
    exe 'source' file
endfor

""" My plug
call plug#begin()
Plug 'tomasr/molokai'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'Bakudankun/qline.vim'

Plug 'Shougo/defx.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" code snippets
Plug 'honza/vim-snippets'

" Simplifying choosing context
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-unimpaired'
Plug 'Eliot00/auto-pairs'

" exploer tree
Plug 'ryanoasis/vim-devicons'

" lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'keith/swift.vim', {'for': 'swift'}
Plug 'arzg/vim-swift', {'for': 'swift'}
Plug 'neovimhaskell/haskell-vim'

" Github Copilot
Plug 'github/copilot.vim'

" tasks
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" leaderf
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" nerdcommenter
Plug 'preservim/nerdcommenter'

" vimspector
Plug 'puremourning/vimspector'

" terminal help
Plug 'skywind3000/vim-terminal-help'

Plug '/opt/homebrew/opt/fzf'

" tags
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

" colorscheme
exe 'colorscheme ' .. color_name

" add modules
for file in split(glob(<SID>get_config_path('modules/*.vim')), '\n')
    exe 'source' file
endfor

" Platform specific settings
if has('mac')
    let s:path = <SID>get_config_path('platform/mac.vim')
    exe 'source' s:path
endif

" Language specific settings
autocmd FileType c,cpp source ~/.vim/lang/c_cpp.vim
autocmd FileType haskell source ~/.vim/lang/haskell.vim
