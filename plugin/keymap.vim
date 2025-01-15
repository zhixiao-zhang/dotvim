vim9script
g:mapleader = ' '
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

map <leader>hl :echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")<CR>

imap <c-f> <Right>

imap <silent><script><expr> <C-E> copilot#Accept("\<CR>")
