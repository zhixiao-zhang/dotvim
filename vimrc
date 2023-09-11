function! s:get_config_path(path_name)
    return '~/.vim/' .. a:path_name
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

exe 'colorscheme ' .. color_name

for file in split(glob(<SID>get_config_path('modules/*.vim')), '\n')
    exe 'source' file
endfor

set tags=./.tags;,.tags

" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']"

autocmd FileType c,cpp source ~/.vim/lang/c_cpp.vim
autocmd FileType haskell source ~/.vim/lang/haskell.vim
