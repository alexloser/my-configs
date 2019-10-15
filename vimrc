"Default VIM Settings of Jerry Max.
"This .vimrc File Contains Syntax Settings.
"Need NOT Set 'colorscheme xxx.vim'.
"Can be Used for both Windows and Linux!"


"Set Options
set title
set ruler
set autoindent
set smartindent
set smarttab
set cindent
set expandtab
set modifiable
set hlsearch
set incsearch
set number
set showcmd
set showmode
set showmatch
set nobackup
set cursorline
set modifiable
set tabstop=4
set backspace=2
set background=dark
set shiftwidth=4
set mouse=a
set splitbelow
set textwidth=160
set showtabline=2
set laststatus=2
set cmdheight=2
set guioptions-=T
set guioptions-=m
set fileencoding=utf-8
set encoding=utf-8
set statusline=\ %F\ \ %m\ \ %y\ \ row:%l\ \ col:%v\ \ last:%L\ \ %P\ \ asc:%Bh\ \ fmt:%{&ff}
"set guifont=Courier 10 Pitch\ 11.5

"Set Highlight Colors
syntax clear
syntax reset
syntax on
hi LineNr   ctermfg=darkgray cterm=none
hi Comment  ctermfg=gray     cterm=none
hi String   ctermfg=magenta  cterm=none
hi Pmenu    ctermfg=white    ctermbg=darkgray
hi PmenuSel ctermfg=black    ctermbg=darkblue
hi cFunctions ctermfg=blue   cterm=none

"Set keys
filetype plugin on
nmap <silent> <F2> : nohl<cr>
nmap <silent> <F3> : leftabove Vexplore<cr>
nmap <silent> <F5> : !python3 %<cr>
nmap <silent> <c-s> <ESC><s-:>w<cr>
imap <silent> <F2> <ESC><s-:>nohl<cr>
imap <silent> <F3> <ESC><s-:>leftabove Vexplore<cr>
imap <silent> <F5> <ESC><s-:>w<cr><ESC><s-:>!python3 %<cr> 
imap <silent> <c-s> <ESC><s-:>w<cr>
imap <c-d> <Delete>
imap <c-l> <c-x><c-l>
set tags=tags;
set autochdir 

"Set Plugins
let g:netrw_winsize=24
let g:netrw_liststyle=2

"Set tagbar
let g:tagbar_right = 1                            
let g:tagbar_width = 24                            
nnoremap <silent> <F8> :TagbarToggle<CR>       
"autocmd VimEnter * nested :call tagbar#autoopen(1)  

"Set Winmanager
let g:winManagerWindowLayout = "FileExplorer"
let g:winManagerWidth = 24 
nmap <silent> <F4> : WMToggle<cr>

filetype plugin on

"Set pydiction"
let g:pydiction_location = '~/.vim/complete-dict'
let g:pydiction_menu_height = 10 

"---- Begin Highlight for Golang ----
syn keyword     goDirective         package import
syn keyword     goDeclaration       var const type
syn keyword     goDeclType          struct interface
hi def link     goDirective         Statement
hi def link     goDeclaration       Keyword
hi def link     goDeclType          Keyword
" Keywords within functions
syn keyword     goStatement         defer go goto return break continue fallthrough
syn keyword     goConditional       if else switch select
syn keyword     goLabel             case default
syn keyword     goRepeat            for range
hi def link     goStatement         Statement
hi def link     goConditional       Conditional
hi def link     goLabel             Label
hi def link     goRepeat            Repeat
" Predefined types
syn keyword     goType              chan map bool string error
syn keyword     goSignedInts        int int8 int16 int32 int64 rune
syn keyword     goUnsignedInts      byte uint uint8 uint16 uint32 uint64 uintptr
syn keyword     goFloats            float32 float64
syn keyword     goComplexes         complex64 complex128
hi def link     goType              Type
hi def link     goSignedInts        Type
hi def link     goUnsignedInts      Type
hi def link     goFloats            Type
hi def link     goComplexes         Type
" Treat func specially: it's a declaration at the start of a line, but a type
" elsewhere. Order matters here.
syn match       goType              /\<func\>/
syn match       goDeclaration       /^func\>/
" Predefined functions and values
syn keyword     goBuiltins          append cap close complex copy delete imag len
syn keyword     goBuiltins          make new panic print println real recover
syn keyword     goConstants         iota true false nil
hi def link     goBuiltins          Keyword
hi def link     goConstants         Keyword
" Comments; their contents
syn keyword     goTodo              contained TODO FIXME XXX BUG
syn cluster     goCommentGroup      contains=goTodo
syn region      goComment           start="/\*" end="\*/" contains=@goCommentGroup,@Spell
syn region      goComment           start="//" end="$" contains=@goCommentGroup,@Spell
hi def link     goComment           Comment
hi def link     goTodo              Todo

syn match AllFuntion display "[a-zA-Z_][a-zA-Z_0-9]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
hi def link AllFuntion cFunctions
"---- End Highlight for Golang ----
