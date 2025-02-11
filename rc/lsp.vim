vim9script
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
noremap <leader>hl :LspHighlight<CR>
noremap <leader>fd :LspFold<CR>
noremap <leader>dc :LspDiag current<CR>
noremap <leader>df :LspDiag first<CR>
noremap <leader>dh :LspDiag here<CR>
noremap <leader>dn :LspDiag nextWrap<CR>
noremap <leader>dp :LspDiag prevWrap<CR>
noremap <leader>ds :LspDiag show<CR>
autocmd * noremap <buffer> <leader><CR> :nohlsearch<CR>:LspHighlightClear<CR>
