highlight clear
if exists("syntax_on")
    syntax reset
endif
if has('termguicolors')
    set termguicolors
endif

let g:colors_name = 'light-pink'

hi Normal ctermfg=188 ctermbg=235 cterm=NONE guifg=#9466aa guibg=#f3ead3
"hi Normal NONE
hi Function ctermfg=221 ctermbg=NONE cterm=bold guifg=#9d3c5e guibg=NONE gui=bold
hi Conditional ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=bold
hi Type ctermfg=172 ctermbg=NONE cterm=bold guifg=#9466aa guibg=NONE gui=bold
hi Constant ctermfg=103 ctermbg=NONE cterm=NONE guifg=#b08B35 guibg=NONE gui=NONE
hi Comment ctermfg=244 ctermbg=NONE cterm=italic guifg=#ba9ab9 guibg=NONE gui=italic
hi Identifier ctermfg=222 ctermbg=NONE cterm=NONE guifg=#9466aa guibg=NONE gui=NONE
hi Keyword ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=NONE
hi Operator ctermfg=250 ctermbg=NONE cterm=NONE guifg=#777777 guibg=NONE gui=NONE
hi Number ctermfg=67 ctermbg=NONE cterm=NONE guifg=#b08b35 guibg=NONE gui=NONE
hi PreProc ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=bold
hi Label ctermfg=103 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=NONE
hi Statement ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=NONE
hi StorageClass ctermfg=172 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=NONE
hi Macro ctermbg=172 ctermbg=NONE cterm=NONE guifg=#e17092 guibg=NONE gui=NONE
hi CursorLineNr ctermfg=NONE ctermbg=24 cterm=NONE guifg=#c46b81 guibg=NONE gui=NONE
hi LineNr ctermfg=60 ctermbg=236 cterm=NONE guifg=#9466aa guibg=#f3ead3 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#ede8fd gui=NONE
hi Visual ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#d6d1e8 gui=NONE
hi Search ctermfg=188 ctermbg=24 guifg=NONE guibg=#f3d5b9 gui=none
hi IncSearch term=reverse ctermfg=188 ctermbg=24 guifg=NONE guibg=#f3d5b9 gui=none
hi String ctermfg=65 ctermbg=NONE cterm=NONE guifg=#3B726c guibg=NONE gui=NONE
hi VertSplit ctermfg=60 ctermbg=236 cterm=NONE guifg=#555555 guibg=#f5f5f5 gui=NONE
hi Title guifg=#e17092 guibg=NONE gui=bold
hi Error guifg=NONE guibg=#783836 gui=NONE term=NONE
hi MatchParen guibg=gray
hi Special guifg=#70ba89 guibg=NONE gui=NONE
hi FoldColumn guifg=#9d3c5e guibg=#f3ead3
hi Folded guifg=#c46b81 guibg=#ede8fd

hi Pmenu guifg=NONE guibg=#f3ead3 gui=NONE
" This attribute is overrided by CocMenuSel
"hi PmenuSel term=reverse guifg=#E17092 guibg=NONE gui=NONE
hi PmenuSbar  ctermfg=NONE ctermbg=24 guifg=NONE guibg=#f5f5f5
hi PmenuThumb ctermfg=59 ctermbg=NONE guifg=NONE guibg=#8e9292
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi CursorColumn guifg=NONE guibg=#cdc9c9
"hi SignColumn guibg=#f5f5f5
hi SignColumn NONE
hi NonText guifg=#f5f5f5

" Coc highlight setting
hi CocMenuSel term=reverse guifg=NONE guibg=#ede8fd gui=NONE
hi CocErrorFloat guifg=#f1897f guibg=#ede8fd
hi CocErrorVirtualText guifg=#f1897f gui=NONE
hi CocErrorSign guifg=#ff0000
hi CocSearch guifg=#e17092
hi link CocSemMacro Function
hi link CocSemTypeMacro Function
hi link CocSemTypeClass Type
hi CocInlayHint guifg=#736a6D
hi link CocFloating Normal 

" C 
hi cFormat guibg=NONE guifg=#b08b35 gui=NONE
hi cSpecial guibg=NONE guifg=#777777 gui=NONE

" vim
hi def link vimUserCmd vimUserCommand
hi def link vimUsrCmd vimUserCommand
hi def link vimUserFunc Function
hi def link vimFunction Function

" shCaseLabel
hi shCaseLabel guifg=#f0b04a guibg=NONE gui=NONE

" statusline
hi StatusLine guifg=#ede8fd guibg=#e17092 gui=bold
hi StatusLineNC guifg=#ede8fd guibg=#e17092 gui=bold
hi StatusLineSeparator guifg=#f5f5f5
hi User1 guifg=#b08b35 guibg=#ede8fd
set background=light
