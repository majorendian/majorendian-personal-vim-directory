set complete-=i
if has("gui_running")
    "colorscheme luinnar
    "colorscheme tetragrammaton
    colorscheme summerfruit256
    "colorscheme newnoise
    set guifont=Monospace\ 8
    set toolbar=
    set nu
else
    colorscheme default
endif
let mapleader=","
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nohlsearch

filetype off

"Slovak remappings for comfort
map č $
map é 0
map š #

"Bracket related completion


"let g:acp_behaviorRubyOmniMethodLength = -1




"Moving lines around

nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==gi
inoremap <C-j> <Esc>:m .+1<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv
map w= <C-W>=
map wr <C-W>r

vnoremap <C-U> :s/    //<CR>

"Auxilary
au! BufRead,BufNewFile *.asm,*.inc,*.mac set filetype=nasm
au! BufRead,BufNewFile *.objdump,*.disasm set filetype=objdump 
au! BufRead,BufNewFile *.tt set filetype=html
au! BufRead,BufNewFile *.gd source ~/.vim/colors/godot.vim
"autocmd FileType python compiler pylint

"Custom keymaps
map <C-N> :tabnew<CR>
map <C-LEFT> :tabp<CR>
map <C-RIGHT> :tabn<CR>
map ws :w<CR>
map wh <C-W><LEFT>
map wl <C-W><RIGHT>
map wj <C-W><DOWN>
map wk <C-W><UP>
map <S-l> :tabn<CR>
map <S-h> :tabp<CR>
map <F8> :ToggleNERDTree<CR>
map +q :q<CR>
map +Q :q!<CR>
map +e :ToggleNERDTree<CR>
map +vs :vne<CR>
map +s :new<CR>


"Autosource .vimrc after write
autocmd! bufwritepost ~/.vimrc source %


filetype plugin indent on


function! CleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '\S$'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
