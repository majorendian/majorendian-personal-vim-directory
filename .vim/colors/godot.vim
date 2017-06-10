set ft=python
syntax keyword xNone type
syntax keyword xIdentifier var func extends true false export setget null const funcref static load preload
syntax keyword xIdentifier Vector2 Rect2 Color File OS Node Node2D
syntax keyword xSpecial self .call .call_func
syntax match xAllCaps /[^'"][\s\.]\zs\([A-Z]\+_\?\)\+\ze\.\?[^"']/
hi link xIdentifier identifier
hi link xNone none
hi link xSpecial Underlined
hi link xAllCaps Constant
set shiftwidth=4
set tabstop=4
"set noexpandtab
