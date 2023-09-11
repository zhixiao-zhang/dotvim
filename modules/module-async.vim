""""""""""""""""""
"""-asynctasks-"""
""""""""""""""""""

" properties config
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']

" build and run the single file
noremap <silent> <a-f>r :AsyncTask file-run<CR>
noremap <silent> <a-f>b :AsyncTask file-build<CR>

" build and run the project
noremap <silent> <a-p>r :AsyncTask project-run<cr>
noremap <silent> <a-p>b :AsyncTask project-build<cr>

" edit the task file
noremap <a-e> :AsyncTaskEdit<CR>

nnoremap <a-q> :call asyncrun#quickfix_toggle(6)<cr>
