" Generate Database of Compilation's Info 
function! s:generate_compile_commands()
        if empty(glob('CMakeLists.txt'))
                echo "Can't find CMakeLists.txt"
                return
        endif
        if empty(glob('.compile_info'))
                exec 'silent !mkdir .compile_info'
        endif
        execute '!cmake -DCMAKE_BUILD_TYPE=DEBUG
                \ -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B .compile_info'
endfunction
command! -nargs=0 Gcmake :call s:generate_compile_commands()

" 进入文件夹后 bear -- make {make_command} -C ..
" 记得 make clean

" indent
set cindent
set smartindent

syn match cOperator "=\|[=+\-*/<>!&|^]=\|==\|!=\|<=\|>=\|>>\|<<\|&&\|+\|++\|-\|--\|\[\|\]\|>\|<\|&\|*"

au FileType c setlocal comments-=:// comments+=f://
