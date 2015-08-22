" Set nasm syntax

if exists("b:current_syntax")
	set ft=nasm
"	finish
endif

syntax keyword declObject object endobject
syntax keyword xFunction function agent route endagent endfunction 
syntax match xFlowControl ".*\zs \(system\|j[mpaebnozs]\{1,\}\|call\|route\(end\|back\|to\|from\)\|endroute\|endif[c]\?\|if[c]\?\|else[c]\?\)\ze.*"
syntax keyword xFunctionType public
syntax keyword xAuxilary module use endmod
syntax keyword inObject offset
syntax keyword xStatement local retc return invoke system jmp call
"syntax keyword xStatement je jz ja jb jbe jae jnz jna jnb jne jnae jnbe
"syntax keyword xStatement js jns jc jnc jp jnp jo jno
"syntax keyword xStatement loopz loopnz loope loopne loopa loopna loopb loopnb loopae loopnae loopbe loopnbe loopo loopno loops loopns loopp loopnp
syn match xDefine "^\s\{0,\}\zs [A-z_0-9]*\ze("hs=s+1
syntax keyword xType string const
syntax keyword ImportantComment NOTE


hi link variable type
hi link xAuxilary special
hi link declObject type
hi link xType type
hi link inObject identifier
hi link ImportantComment error
hi xFunctionType ctermfg=White ctermbg=none cterm=none
hi xDefine ctermfg=Cyan ctermbg=none cterm=bold
hi xFunction ctermfg=white ctermbg=none cterm=bold
