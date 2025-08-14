vim9script
g:mapleader = ' '

const nMappings = [
  { key: '<leader>h', mappping: ':wincmd h<cr>' },
  { key: '<leader>j', mappping: ':wincmd j<cr>' },
  { key: '<leader>k', mappping: ':wincmd k<cr>' },
  { key: '<leader>l', mappping: ':wincmd l<cr>' },
  { key: '<c-t>', mappping: ':tabe<cr>' },
  { key: '<c-p>', mappping: ':-tabnext<cr>' },
  { key: '<c-n>', mappping: ':+tabnext<cr>' },
  { key: '<leader>hl', mappping: ':echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")<cr>' },
  { key: '<leader><cr>', mappping: ':nohlsearch<cr>' },
]

for mapping in nMappings
  execute 'noremap ' .. mapping.key .. ' ' .. mapping.mappping
endfor

const iMappings = [
  { key: '<c-f>', mappping: '<Right>' },
  { key: '<c-b>', mappping: '<Left>' },
]

for mapping in iMappings
  execute 'inoremap ' .. mapping.key .. ' ' .. mapping.mappping
endfor

const tMappings = [
  { key: '<Esc>', mappping: '<C-\><C-n>' },
]

for mapping in tMappings
  execute 'tnoremap ' .. mapping.key .. ' ' .. mapping.mappping
endfor
