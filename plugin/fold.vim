vim9script
# enable folding for c, cpp, python, sh, vim
autocmd FileType c,cpp,python,sh,vim set foldenable

#auto store and load folds
# autocmd BufWinLeave *.c,*.cpp,*.py,*.sh,*.vim,vimrc mkview
# autocmd BufWinEnter *.c,*.cpp,*.py,*.sh,*.vim,vimrc silent loadview
