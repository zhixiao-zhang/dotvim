vim9script
imap <silent><script><expr> <C-E> copilot#Accept("\<CR>")
g:copilot_no_tab_map = v:true
g:copilot_filetypes = {
      \ '*': v:true,
      \ 'markdown': v:false,
      \ }
