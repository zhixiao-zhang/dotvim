vim9script
if has('termguicolors')
    set termguicolors
endif

# For light version.
var time = str2nr(strftime("%H"))
if time >= 6 && time < 18
  set background=light
else
  set background=dark
endif

g:everforest_background = 'soft'

# For better performance
g:everforest_better_performance = 1

colorscheme everforest

hi Normal guibg=NONE

set laststatus=2
set ruler
