set laststatus=2
set background=dark
if has('termguicolors')
    set termguicolors
endif
let color_name = 'darcula'
let g:rehash256 = 1
" transparent
hi Normal ctermbg = NONE

let g:airline_theme = 'default'

" gui settings
if has('gui_running')
    set guifont=JetBrainsMono\ Nerd\ Font:h22
    set transparency=5
    set nofullscreen
    set lines=40 columns=120
endif
