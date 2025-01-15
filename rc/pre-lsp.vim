vim9script
var lspOpts = {
  autoHighlightDiags: v:true,
  diagSignErrorText: "\uf467",
  diagSignWarningText: "\uf071",
  diagSignInfoText: "\uf129",
  diagSignHintText: "\uf864",
  semanticHighlight: v:true,
  snippetSupport: v:true,
  ultisnipsSupport: v:true,
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
    path: '/opt/homebrew/bin/pyright',
    args: ['--stdio'],
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
