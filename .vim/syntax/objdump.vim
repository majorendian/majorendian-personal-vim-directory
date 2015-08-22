"<OWNER> = Regents of the University of California
"<YEAR> = 1998
"
"In the original BSD license, both occurrences of the phrase "COPYRIGHT HOLDERS AND CONTRIBUTORS" in the disclaimer read "REGENTS AND CONTRIBUTORS".
"
"Here is the license template:
"
"Copyright (c) 2015, Ernest Deák
"All rights reserved.
"
"Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
"
"1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
"
"2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
"
"THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


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
