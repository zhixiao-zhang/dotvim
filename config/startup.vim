vim9script
source $HOME/.config/vim/config/general.vim
source $HOME/.config/vim/config/plug.vim
source $HOME/.config/vim/config/dress.vim
source $HOME/.config/vim/config/keymap.vim

# Platform specific settings
if exists("s:path") == 0
    var path = '~/.config/vim/config/platform/' .. (has('mac') ? 'mac' : 'linux') .. '.vim'
    if !empty(path)
      exe 'source ' .. path
    endif
endif
