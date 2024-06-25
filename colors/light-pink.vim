highlight clear
if exists("syntax_on")
    syntax reset
endif
if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'light-pink'

"hi Normal ctermfg=188 ctermbg=235 cterm=NONE guifg=NONE guibg=#f5f5f5
hi Normal NONE
hi Function ctermfg=221 ctermbg=NONE cterm=bold guifg=#9d3c5e guibg=NONE gui=bold
hi Conditional ctermfg=172 ctermbg=NONE cterm=NONE guifg=#649FC3 guibg=NONE gui=bold
hi Type ctermfg=172 ctermbg=NONE cterm=NONE guifg=#9466AA guibg=NONE gui=bold
hi Constant ctermfg=103 ctermbg=NONE cterm=NONE guifg=#B08B35 guibg=NONE gui=NONE
hi Comment ctermfg=244 ctermbg=NONE cterm=italic guifg=#BA9AB9 guibg=NONE gui=italic
"hi Comment ctermfg=244 ctermbg=NONE cterm=italic guifg=#F4C7C2 guibg=NONE gui=italic
hi Identifier ctermfg=222 ctermbg=NONE cterm=NONE guifg=#9466AA guibg=NONE gui=NONE
hi Keyword ctermfg=172 ctermbg=NONE cterm=NONE guifg=#E17092 guibg=NONE gui=NONE
hi Operator ctermfg=250 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi Number ctermfg=67 ctermbg=NONE cterm=NONE guifg=#B08B35 guibg=NONE gui=NONE
hi PreProc ctermfg=172 ctermbg=NONE cterm=NONE guifg=#E17092 guibg=NONE gui=bold
hi Label ctermfg=103 ctermbg=NONE cterm=NONE guifg=#E17092 guibg=NONE gui=NONE
hi Statement ctermfg=172 ctermbg=NONE cterm=NONE guifg=#E17092 guibg=NONE gui=NONE
hi StorageClass ctermfg=172 ctermbg=NONE cterm=NONE guifg=#E17092 guibg=NONE gui=NONE
hi Macro ctermbg=172 ctermbg=NONE cterm=bold guifg=#E17092 guibg=NONE gui=bold
hi CursorLineNr ctermfg=NONE ctermbg=24 cterm=NONE guifg=#C46B81 guibg=NONE gui=NONE
"hi LineNr ctermfg=60 ctermbg=236 cterm=NONE guifg=#736A6D guibg=#f5f5f5 gui=NONE
hi LineNr NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#EDE8FD gui=NONE
hi Visual ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#D6D1E8 gui=NONE
hi Search ctermfg=188 ctermbg=24 guifg=NONE guibg=#F3D5B9 gui=none
hi IncSearch term=reverse ctermfg=188 ctermbg=24 guifg=NONE guibg=#F3D5B9 gui=none
hi String ctermfg=65 ctermbg=NONE cterm=NONE guifg=#3B726C guibg=NONE gui=NONE
hi VertSplit ctermfg=60 ctermbg=236 cterm=NONE guifg=#555555 guibg=#f5f5f5 gui=NONE
hi Title guifg=#E17092 guibg=NONE gui=bold
hi Error guifg=NONE guibg=#783836 gui=NONE term=NONE
hi MatchParen guibg=gray
hi Special guifg=#70BA89 guibg=NONE gui=NONE

hi Pmenu guifg=NONE guibg=#F5F5F5 gui=NONE
" This attribute is overrided by CocMenuSel
"hi PmenuSel term=reverse guifg=#E17092 guibg=NONE gui=NONE
hi PmenuSbar  ctermfg=NONE ctermbg=24 guifg=NONE guibg=#f5f5f5
hi PmenuThumb ctermfg=59 ctermbg=NONE guifg=NONE guibg=#8e9292
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi CursorColumn guifg=NONE guibg=#CDC9C9
"hi SignColumn guibg=#f5f5f5
hi SignColumn NONE
hi NonText guifg=#f5f5f5

" Coc highlight setting
hi CocMenuSel term=reverse guifg=NONE guibg=#EDE8FD gui=NONE
hi CocErrorFloat guifg=#f1897f guibg=#EDE8FD
hi CocErrorVirtualText guifg=#f1897f gui=NONE
hi CocErrorSign guifg=#ff0000
hi CocSearch guifg=#E17092
hi link CocSemMacro Function
hi CocInlayHint guifg=#736A6D

" C 
hi cFormat guibg=NONE guifg=#B08B35 gui=NONE
hi cSpecial guibg=NONE guifg=#777777 gui=NONE

" vim
hi def link vimUserCmd vimUserCommand
hi def link vimUsrCmd vimUserCommand
hi def link vimUserFunc Function
hi def link vimFunction Function

" shCaseLabel
hi shCaseLabel guifg=#F0B04A guibg=NONE gui=NONE

" statusline
hi StatusLine guifg=#EDE8FD guibg=#E17092 gui=bold
hi StatusLineNC guifg=#EDE8FD guibg=#E17092 gui=bold
hi StatusLineSeparator guifg=#f5f5f5
hi User1 guifg=#B08B35 guibg=#EDE8FD
set background=light
