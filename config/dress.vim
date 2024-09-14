vim9script
if has('termguicolors')
    set termguicolors
endif

# For light version.
set background=light

# Set contrast.
# This configuration option should be placed before `colorscheme everforest`.
# Available values: 'hard', 'medium'(default), 'soft'
g:everforest_background = 'soft'

# For better performance
g:everforest_better_performance = 1
