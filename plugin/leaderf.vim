vim9script
# leaderf
# popup window
g:Lf_WindowPosition = 'bottom'
g:Lf_WindowHeight = 0.3

# mapping
nnoremap <silent> <leader>ff :LeaderfFile --no-auto-preview<CR>
nnoremap <silent> <leader>fb :LeaderfBuffer<CR>
nnoremap <silent> <leader>fm :LeaderfMru<CR>
nnoremap <silent> <leader>fl :LeaderfLine<CR>
nnoremap <silent> <leader>ft :LeaderfTag --no-auto-preview<CR>
nnoremap <silent> <leader>fn :LeaderfFunction<CR>
nnoremap <silent> <leader>fc :LeaderfColorscheme --no-auto-preview<CR>
nnoremap <silent> <leader>fs :Leaderf rg --no-auto-preview<CR>
