set nocompatible
set complete-=i
syntax on
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



"let g:acp_behaviorRubyOmniMethodLength = -1
let g:ctrlp_working_path_mode=0 "ctrl+p search only from current working directory

"Moving lines around

nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==gi
inoremap <C-j> <Esc>:m .+1<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv

vnoremap <C-U> :s/    //<CR>

"Auxilary
au! BufRead,BufNewFile *.asm,*.inc,*.mac set filetype=nasm
au! BufRead,BufNewFile *.objdump,*.disasm set filetype=objdump
au! BufRead,BufNewFile *.tt set filetype=html
au! BufRead,BufNewFile *.pro set filetype=prolog
au! BufRead,BufNewFile *.gd source ~/.vim/colors/godot.vim
au! BufRead,BufNewFile *.pl,*.t map <S-F10> :! perl % <CR>
"autocmd FileType python compiler pylint
au! BufRead,BufNewFile *.rb imap <S-CR>    <CR><CR>end<Esc>-cc

"Custom keymaps
map <C-N> :tabnew<CR>
map <C-LEFT> :tabp<CR>
map <C-RIGHT> :tabn<CR>
map <S-l> :tabn<CR>
map <S-h> :tabp<CR>
map <A-h> :bp<CR>
map <A-l> :bn<CR>
map <F8> :ToggleNERDTree<CR>
map <F9> :TlistToggle<CR>
map <Leader>q :q<CR>
map <Leader>Q :q!<CR>
map <Leader>e :ToggleNERDTree<CR>
map <Leader>l :TlistToggle<CR>
map <Leader>vs :vne<CR>
map <Leader>s :new<CR>
map <Leader>t :!date<CR>
map <Leader>p :b#<CR>
map <Leader>b :CtrlPBuffer<CR>
map <C-f> :exe "vimgrep /" . expand("<cword>") . "/" . "**/*." . expand("%:e")<CR>:copen<CR>

"Common editor type behaviour that is pretty usefull
imap <C-BACKSPACE> <ESC>dbxi
imap <C-h> <ESC>dbxi

"Search in tags with ctrl-b instead of ctrl-] which seems to be a bit broken
"for me
nmap <C-b> <ESC>:exe "tag " . expand("<cword>")<CR>
inoremap <C-a> <ESC>0i
inoremap <C-d> <ESC>$a

"Autosource .vimrc after write
autocmd! bufwritepost ~/.vimrc source %


filetype on
filetype plugin indent on


function! CleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '\S$'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

set guioptions=""
set guioptions+=i
if has("gui_running")
    "colorscheme luinnar
    "colorscheme tetragrammaton
    "colorscheme summerfruit256
    colorscheme github
    "colorscheme newnoise
    set guifont=Monospace\ 10
    set toolbar=""
    set nu
else
    colorscheme default
endif

" Function to trim unwanted whitespace
" and setup to link it to file writting
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

au BufWritePre *.py :call TrimWhiteSpace()


" Highlight unwanted whitespace
au! BufRead *.py match ErrorMsg '\s\+$\|\t'
