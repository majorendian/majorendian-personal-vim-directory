syntax keyword xIdentifier eax ebx edx ecx edi esi
syntax keyword xIdentifier rax rbx rdx rcx rdi rsi
syntax keyword xSpecial esp ebp eip gs ds cs ss
syntax keyword xSpecial rsp rbp rip gs ds cs ss
syntax keyword xStatement call ret
syntax keyword xType DWORD WORD QWORD BYTE PTR
syntax match xNumber /\(0x\)\([abcdefABCDEF0-9]*\)/
syntax match xStatement /j[gtenopmpsz]\{1,2\}/
syntax match xFuncPlt /<.*>/
syntax match funcReturn /.*ret.*/
syntax match funcBegin /.*push\s*[er]\?bp.*\n.*mov\s*[re]\?bp,[re]\?sp.*/
highlight link xType type
highlight link xStatement statement
highlight link xIdentifier identifier
highlight link xNumber number
highlight link xSpecial debug
highlight link xFuncPlt function
highlight funcReturn ctermbg=darkgrey ctermfg=darkred cterm=bold
highlight funcBegin ctermbg=darkgrey ctermfg=darkred cterm=bold
set ro
