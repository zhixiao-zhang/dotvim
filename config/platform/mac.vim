vim9script
# change the input method to Keyboard ABC when pushing the ESC.

autocmd InsertLeave * :silent !im-select com.apple.keylayout.ABC
