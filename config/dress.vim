vim9script
if has('termguicolors')
    set termguicolors
endif

set background=dark

augroup custom_papercolorslim_transparent_background
  autocmd!
  autocmd ColorScheme PaperColorSlim highlight Normal guibg=NONE
  autocmd ColorScheme PaperColorSlim highlight Pmenu guibg=NONE
augroup end

colorscheme PaperColorSlim

set laststatus=2
set nocursorline
set ruler
