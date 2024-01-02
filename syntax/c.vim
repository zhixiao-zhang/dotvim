" highlighting enhanced
syn match cOperator "=\|[=+\-*/<>!&|^]=\|==\|!=\|<=\|>=\|>>\|<<\|&&\|+\|++\|-\|--\|\[\|\]\|>\|<\|&\|*"

" autoload variables info
function! ReadVariableList()
    let l:current_dir = expand('%:p:h')  " 获取当前文件所在目录的绝对路径
    let l:variable_list = l:current_dir .. '/.variables'

    " 检查 .localconfig 文件是否存在
    if !filereadable(l:variable_list)
        exec ':!python3 ~/code/script/python-clang/ast.py'
    endif
    "execute 'source ' . l:variable_list
    let l:types = readfile(l:variable_list)
    for l:type in l:types
        execute 'syntax keyword cType' .. ' ' .. l:type
    endfor
endfunction
