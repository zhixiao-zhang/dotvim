vim9script
syn match cOperator "=\|[=+\-*/<>!&|^]=\|==\|!=\|<=\|>=\|>>\|<<\|&&\|+\|++\|-\|--\|\[\|\]\|>\|<\|&\|*"

au FileType c setlocal comments-=:// comments+=f://

hi cFormat guibg=NONE guifg=#B08B35 gui=NONE
hi cSpecial guibg=NONE guifg=#777777 gui=NONE
