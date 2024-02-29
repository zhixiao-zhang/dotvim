"noremap j h
"noremap k j
"noremap l k
"noremap ; l
"noremap h :

map s <nop>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

map <c-u> :tabe<CR>
map <c-j> :-tabnext<CR>
map <c-k> :+tabnext<CR>
