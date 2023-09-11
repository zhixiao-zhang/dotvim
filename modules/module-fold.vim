" enable folding for c, cpp, python, sh, vim
autocmd FileType c,cpp,python,sh,vim set foldenable

"auto store and load folds
autocmd BufWinLeave *.c,*.cpp,*.py,*.sh,*.vim,vimrc mkview
autocmd BufWinEnter *.c,*.cpp,*.py,*.sh,*.vim,vimrc silent loadview

" fold toggle
nnoremap <leader>fd za
" close all folds
nnoremap <leader>ca zM
" delete current fold
nnoremap <leader>cd zD
" delete all fold
nnoremap <leader>da zE
" move to next fold
nnoremap <leader>nf zj
" move to previous fold
nnoremap <leader>pf zk
