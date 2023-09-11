noremap j h
noremap k j
noremap l k
noremap ; l
noremap h :

map s <nop>
map sl :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map s; :set splitright<CR>:vsplit<CR>

map <LEADER>u :tabe<CR>
map <LEADER>K :-tabnext<CR>
map <LEADER>L :+tabnext<CR>

" close the quickfix window
noremap <silent> <leader>qc :cclose<CR>

