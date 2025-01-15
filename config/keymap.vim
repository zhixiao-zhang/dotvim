vim9script
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

#map <leader>hl :echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")<CR>

imap <c-f> <Right>

noremap gD :LspGotoDeclaration<CR>
noremap <leader>pD :LspPeekDeclaration<CR>
noremap gd :LspGotoDefinition<CR>
noremap <leader>pd :LspPeekDefinition<CR>
noremap gi :LspGotoImpl<CR>
noremap <leader>pi :LspPeekImpl<CR>
noremap gr :LspShowReferences<CR>
noremap <leader>pr :LspPeekReferences<CR>
noremap gt :LspGotoTypedef<CR>
noremap <leader>pt :LspPeekTypedef<CR>
noremap <leader>rn :LspRename<CR>
noremap gs :LspSwitchSourceHeader<CR>
noremap <leader>sa :LspShowSignature<CR>
noremap K :LspHover<CR>
noremap <leader>fm :LspFormat<CR>
noremap <leader>os :LspOutline<CR>
noremap <leader>ds :LspDocumentSymbol<CR>
noremap <leader>ss :LspSymbolSearch 
nnoremap <silent> <C-e> :LspSelectionExpand<CR>
nnoremap <silent> <C-s> :LspSelectionShrink<CR>
xnoremap <silent> <C-e> <Cmd>LspSelectionExpand<CR>
xnoremap <silent> <C-s> <Cmd>LspSelectionShrink<CR>
noremap <leader>ic :LspIncomingCalls<CR>
noremap <leader>oc :LspOutgoingCalls<CR>
noremap <leader>hl :LspHighlight<CR>
noremap <leader>fd :LspFold<CR>
noremap <leader>dc :LspDiag current<CR>
noremap <leader>df :LspDiag first<CR>
noremap <leader>dh :LspDiag here<CR>
noremap <leader>dn :LspDiag nextWrap<CR>
noremap <leader>dp :LspDiag prevWrap<CR>
noremap <leader>ds :LspDiag show<CR>

autocmd FileType * noremap <buffer> <leader><CR> :nohlsearch<CR>

autocmd FileType c,cpp noremap <buffer> <leader><CR> :nohlsearch<CR>:LspHighlightClear<CR>
