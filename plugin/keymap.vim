vim9script
g:mapleader = ' '

const nMappings = [
  { key: 's', mappping: '<nop>' },
  { key: 'sk', mappping: ':set nosplitbelow<CR>:split<CR>' },
  { key: 'sj', mappping: ':set splitbelow<CR>:split<CR>' },
  { key: 'sh', mappping: ':set nosplitright<CR>:vsplit<CR>' },
  { key: 'sl', mappping: ':set splitright<CR>:vsplit<CR>' },
  { key: '<leader>h', mappping: ':wincmd h<CR>' },
  { key: '<leader>j', mappping: ':wincmd j<CR>' },
  { key: '<leader>k', mappping: ':wincmd k<CR>' },
  { key: '<leader>l', mappping: ':wincmd l<CR>' },
  { key: '<c-u>', mappping: ':tabe<CR>' },
  { key: '<c-j>', mappping: ':-tabnext<CR>' },
  { key: '<c-k>', mappping: ':+tabnext<CR>' },
  { key: '<leader>hg', mappping: ':echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")<CR>' },
]

for mapping in nMappings
  execute 'map ' .. mapping.key .. ' ' .. mapping.mappping
endfor

imap <c-f> <Right>

imap <silent><script><expr> <C-q> copilot#Accept("\<CR>")

autocmd FileType * noremap <buffer> <leader><CR> :nohlsearch<CR>
autocmd FileType c,cpp,python,rust noremap <buffer> <leader><CR> :nohlsearch<CR>:LspHighlightClear<CR>
