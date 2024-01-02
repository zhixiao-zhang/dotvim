set laststatus=2
" 在 vim 配置文件中添加以下内容
set statusline=%<%F\|
set statusline+=%h%m%r
set statusline+=%=\|%l/%L\|
set statusline+=%1*%{&fileencoding}%*\|
set statusline+=%P\|
set statusline+=%w%y

if has('termguicolors')
    set termguicolors
endif
let color_name = 'light-pink'
let g:rehash256 = 1
" transparent
hi Normal ctermbg = NONE guibg = NONE
