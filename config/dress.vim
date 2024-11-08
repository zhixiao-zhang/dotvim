vim9script
if has('termguicolors')
    set termguicolors
endif

set background=dark

g:everforest_background = 'soft'

# For better performance
g:everforest_better_performance = 1

colorscheme everforest

hi Normal guibg=NONE
hi Pmenu guibg=NONE
hi CocFloating guibg=NONE
hi StatusLine guibg=NONE

set laststatus=2
set nocursorline
set ruler
