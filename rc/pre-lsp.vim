vim9script
var lspOpts = {
  autoHighlightDiags: v:true,
  autoComplete: v:false,
  diagSignErrorText: "\uf467",
  diagSignWarningText: "\uf071",
  diagSignInfoText: "\uf129",
  diagSignHintText: "\uf864",
  semanticHighlight: v:true,
  snippetSupport: v:true,
  #ultisnipsSupport: v:true,
}
autocmd User LspSetup call LspOptionsSet(lspOpts)

var lspServers = [
  {
	  name: 'clang',
	  filetype: ['c', 'cpp'],
	  path: '/opt/homebrew/opt/llvm/bin/clangd',
	  args: [
      '--background-index',
      '--clang-tidy',
      '--clang-tidy-checks=performance-*,bugprone-*',
      '--all-scopes-completion',
      '--completion-style=detailed',
      '--header-insertion=iwyu',
      '--pch-storage=disk',
    ]
	},
  {
    name: 'bashls',
    filetype: ['sh', 'bash'],
    path: '/opt/homebrew/bin/bash-language-server',
    args: ['start']
  },
  {
    name: 'vimls',
    filetype: ['vim'],
    path: '/opt/homebrew/bin/vim-language-server',
    args: ['--stdio']
  },
  {
    name: 'pyright',
    filetype: ['python'],
    path: '/opt/homebrew/bin/pyright-langserver',
    args: ['--stdio'],
    workspaceConfig: {
      python: {
        pythonPath: ''
      }
    }
  },
  {
    name: 'rustanalyzer',
    filetype: ['rust'],
    path: '/opt/homebrew/bin/rust-analyzer',
    args: [],
    syncInit: v:true,
    initializationOptions: {
      inlayHints: {
        typeHints: v:true,
        parameterHints: v:true,
      },
      
    }
  },
  {
    name: 'vscode-html-server',
    filetype: ['html'],
    path: '/opt/homebrew/bin/vscode-html-language-server',
    args: ['--stdio']
  },
  {
    name: 'vscode-css-server',
    filetype: ['css'],
    path: '/opt/homebrew/bin/vscode-css-language-server',
    args: ['--stdio']
  },
  {
    name: 'vscode-markdown-server',
    filetype: ['markdown'],
    path: '/opt/homebrew/bin/vscode-markdown-language-server',
    args: ['--stdio']
  },
  {
    name: 'vscode-json-server',
    filetype: ['json'],
    path: '/opt/homebrew/bin/vscode-json-language-server',
    args: ['--stdio']
  }
]
autocmd User LspSetup call LspAddServer(lspServers)

augroup ResetLspHighlight
  autocmd!
  autocmd VimEnter * hi LspDiagSignWarningText guibg=#F5F5F5 cterm=NONE
  autocmd VimEnter * hi LspDiagInlineWarning guisp=#B08B35 cterm=underline
augroup END

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
