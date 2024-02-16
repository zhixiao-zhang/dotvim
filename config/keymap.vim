noremap j h
noremap k j
noremap l k
noremap ; l
noremap h :
noremap H ;
noremap : H


map s <nop>
map sl :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map s; :set splitright<CR>:vsplit<CR>

map <leader>j :wincmd h<CR>
map <leader>k :wincmd j<CR>
map <leader>l :wincmd k<CR>
map <leader>; :wincmd l<CR>

map <c-u> :tabe<CR>
map <c-k> :-tabnext<CR>
map <c-l> :+tabnext<CR>
