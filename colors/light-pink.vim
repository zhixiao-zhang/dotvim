vim9script
highlight clear
if exists("syntax_on")
    syntax reset
endif
if has('termguicolors')
    set termguicolors
endif

g:colors_name = 'light-pink'

def Highlight(group: string, fg: string, bg: string, style: string)
  const gui = (style == '' ? '' : 'cterm=' .. style)
  const guifg = (fg == '' ? '' : 'guifg=' .. fg)
  const guibg = (bg == '' ? '' : 'guibg=' .. bg)
  exec 'hi ' .. group .. ' ' .. guibg .. ' ' .. guifg  .. ' ' .. gui
enddef

def HighlightLink(from: string, to: string)
  exec 'hi! link ' .. from .. ' ' .. to
enddef

const Colors = [
  '#BA9AB9', '#F1897F', '#777777', '#E17092',
  '#9466AA', '#9D3C5E', '#B08B35', '#1F6E89',
  '#FF7AB3', '#F5F5F5', '#D6D1E8', '#736A6D',
  '#C46B81', '#F3D5B9', '#555555', '#F2F8FC',
  '#93C6D6', '#FFEAEA', '#C73D20', '#B08B35',
  '#1F6E89'
]

const highlights = [
  { group: 'Normal', fg: '', bg: Colors[9], style: '' },
  { group: 'Comment', fg: Colors[0], bg: '', style: 'italic' },
  { group: 'Error', fg: Colors[1], bg: Colors[17], style: '' },
  { group: 'Operator', fg: Colors[2], bg: '', style: '' },
  { group: 'Keyword', fg: Colors[3], bg: '', style: '' },
  { group: 'PreProc', fg: Colors[3], bg: '', style: 'bold' },
  { group: 'Identifier', fg: Colors[4], bg: '', style: '' },
  { group: 'Type', fg: Colors[4], bg: '', style: 'bold' },
  { group: 'Function', fg: Colors[5], bg: '', style: 'bold' },
  { group: 'Constant', fg: Colors[6], bg: '', style: '' },
  { group: 'String', fg: Colors[7], bg: '', style: '' },
  { group: 'StatusLine', fg: Colors[9], bg: Colors[8], style: '' },
  { group: 'SignColumn', fg: '', bg: Colors[9], style: '' },
  { group: 'CursorLine', fg: '', bg: Colors[10], style: '' },
  { group: 'LineNr', fg: Colors[11], bg: '', style: '' },
  { group: 'CursorLineNr', fg: Colors[12], bg: '', style: '' },
  { group: 'Search', fg: '', bg: Colors[13], style: '' },
  { group: 'VertSplit', fg: Colors[14], bg: Colors[9], style: '' },
  { group: 'Pmenu', fg: '', bg: Colors[15], style: '' },
  { group: 'PmenuSel', fg: '', bg: Colors[16], style: '' },
  { group: 'DiffDelete', fg: Colors[18], bg: '', style: '' },
  { group: 'DiffChange', fg: Colors[19], bg: '', style: '' },
  { group: 'DiffAdd', fg: Colors[20], bg: '', style: '' },
  { group: 'DiffAdd', fg: '', bg: 'Gray', style: '' },
  { group: 'MatchParen', fg: '', bg: 'Gray', style: '' },
  { group: 'ErrorMsg', fg: 'Red', bg: Colors[9], style: '' },
]

const highlightlinks = [
  { from: 'NonText', to: 'Comment' },
  { from: 'Folded', to: 'Comment' },
  { from: 'Whitespace', to: 'Comment' },
  { from: 'Repeat', to: 'Conditional' },
  { from: 'CursorLineNr', to: 'Identifier' },
  { from: 'vimIsCommand', to: 'Identifier' },
  { from: 'vimMapRhs', to: 'Identifier' },
  { from: 'vimAutocmdSFxList', to: 'Identifier' },
  { from: 'Conditional', to: 'Operator' },
  { from: 'Macro', to: 'Function' },
  { from: 'Statement', to: 'Keyword' },
  { from: 'Operator', to: 'Keyword' },
  { from: 'Title', to: 'Keyword' },
  { from: 'Special', to: 'Keyword' },
  { from: 'Label', to: 'Keyword' },
  { from: 'StorageClass', to: 'Keyword' },
  { from: 'Structure', to: 'Keyword' },
  { from: 'include', to: 'Keyword' },
  { from: 'ColorColumn', to: 'CursorLine' },
  { from: 'Visual', to: 'CursorLine' },
  { from: 'Number', to: 'Constant' },
  { from: 'Wildmenu', to: 'SignColumn' },
  { from: 'IncSearch', to: 'Search' },
  { from: 'StatusLineNC', to: 'StatusLine' }
]

for hl in highlights
  Highlight(hl.group, hl.fg, hl.bg, hl.style)
endfor

for hll in highlightlinks
  HighlightLink(hll.from, hll.to)
endfor

set background=light
syntax on
