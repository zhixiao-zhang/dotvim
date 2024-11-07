vim9script
if has('termguicolors')
    set termguicolors
endif

# For light version.
var time = str2nr(strftime("%H"))
if time >= 6 && time < 18
  set background=dark
else
  set background=light
endif

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
