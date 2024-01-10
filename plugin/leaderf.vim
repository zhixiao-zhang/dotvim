""" leaderf
" popup window
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_CommandMap = {'<C-J>': ['<Up>', '<C-K>'], '<C-K>': ['<Down>', '<C-L>']}

" mapping
nnoremap <silent> <leader>ff :LeaderfFile<CR>
nnoremap <silent> <leader>fb :LeaderfBuffer<CR>
nnoremap <silent> <leader>fm :LeaderfMru<CR>
nnoremap <silent> <leader>fl :LeaderfLine<CR>
nnoremap <silent> <leader>ft :LeaderfTag<CR>
nnoremap <silent> <leader>fn :LeaderfFunction<CR>
nnoremap <silent> <leader>fc :LeaderfColorscheme<CR>
nnoremap <silent> <leader>fs :Leaderf rg<CR>
