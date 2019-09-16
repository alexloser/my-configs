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
set textwidth=99
set showtabline=2
set laststatus=2
set cmdheight=3
"set guioptions-=T
"set guioptions-=m
set fileencoding=utf-8
set encoding=utf-8
set statusline=\ %F\ \ %m\ \ %y\ \ row:%l\ \ col:%v\ \ last:%L\ \ %P\ \ asc:%Bh\ \ fmt:%{&ff}
if has("win32")
	set guifont=Consolas:h13
	language english
else
	set lines=36 columns=140
	winpos 140 40
	set guifont=YaHei\ Consolas\ Hybrid\ 11.5
	"set guifont=Courier\ 10\ Pitch\ 11.5
    "set guifont=Terminus\ bold\ 12
endif


"Set Highlight Colors
syntax clear
syntax reset
syntax on
colorscheme solarized
syn match AllFuntion display "[a-zA-Z_][a-zA-Z_0-9]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
hi  Function    guifg=#10AFFF   guibg=bg    gui=none
hi def link AllFuntion Function


"Set keys
filetype plugin on
nmap <silent> <F2> : nohl<cr>
nmap <silent> <F3> : leftabove Vexplore<cr>
nmap <silent> <F5> : !python3 %<cr>
nmap <silent> <c-s> : w<cr>
imap <silent> <F2> <ESC><s-:>nohl<cr>
imap <silent> <F3> <ESC><s-:>leftabove Vexplore<cr>
imap <silent> <F5> <ESC><s-:>w<cr><ESC><s-:>!python3 %<cr> 
imap <silent> <c-s> <ESC><s-:>w<cr>
imap <m-h> <Left>
imap <m-j> <Down>
imap <m-k> <Up>
imap <m-l> <Right>
imap <m-b> <c-Left>
imap <m-e> <c-Right>
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
let g:pydiction_location = '~/.vim/after/ftplugin/complete-dict'
let g:pydiction_menu_height = 10 




