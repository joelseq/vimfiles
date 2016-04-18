" ~/.vimrc
set nocompatible    " This line must be first or the changes you are expecting
                    " may not be the changes that occ
		    "

execute pathogen#infect()
filetype plugin indent on

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

"============================================================================
"vim-go
"============================================================================
	
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

"=============================================================================
"Plugin
"=============================================================================

map <C-t> :NERDTreeToggle<CR>
map <C-f> :NERDTreeMapActivateNode<CR>

"=============================================================================
" General Settings
"=============================================================================
set cursorcolumn        " Column displayed above/below cursor
set noerrorbells        " no error beeps
set novisualbell        " no error flashes

set title               " filename [+=-] (path) - GVIM
set confirm             " Starts dialog when exiting without saving

set ignorecase			" search without regards to case
set noincsearch			" don't go immediately to pattern typed
set nohlsearch			" highlight search terms
				" remove highlighting from search
:nnoremap <CR> :nohlsearch<CR>/<BS>  

set backspace=indent,eol,start  " backspace over everything
set fileformats=unix,dos,mac    " open files from mac/dos

set ruler	            " show line number
set nu 			        " line numbers on
set showmode            " Display the current mode on the last line
set exrc                        " open local config files
set nojoinspaces                " don't add white space when I don't tell you to
set showmatch                   " ensure Dyck language
set incsearch                   " incremental searching
set t_Co=256
:colorscheme molokai

:set mousehide	        " Hides the mouse pointer when typing characters
:set undolevels=100     " The commands that can be stored in for undo
:set history=20	        " Stores the last 20 ':' commands
:set nolist	        " Tabs are not shown as <TABS> and EOL as <EOL>
:set matchtime=2        " Tenths of seconds to show matching pairs
:set splitbelow         " Extra window open below the current window  

"=============================================================================
" Formating Options
"=============================================================================
set bs=2			    " fix backspacing in insert mode

set autoindent			" autoindent on
set smartindent         " next line of indention based on previous line
set formatoptions=tcrq	" how to auto indent, see fo-table for description

:inoremap { {}<Esc>i
:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
":inoremap \" \""<Esc>i
			":inoremap <CR> <Esc>/[)}"'\]>]<CR>A
" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{go,cc,c,h,java,lua,hpp,cpp,scala,clj,py,go} set expandtab
au BufRead,BufNewFile *.{go,cc,c,h,java,lua,hpp,cpp,scala,clj,py,go} set shiftwidth=2
au BufRead,BufNewFile *.{go,cc,c,h,java,lua,hpp,cpp,scala,clj,py,go} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

au BufRead,BufNewFile Makefile set noexpandtab
au BufRead,BufNewFile Makefile set shiftwidth=4
au BufRead,BufNewFile Makefile set tabstop=4

"au BufRead,BufNewFile *.go set filetype=go

"set columns=80			" set the number of columns in a new window
set textwidth=80		" max width of text being inserted
set wrapmargin=2		" word wraps 2 characters from the margin

":set columns=80         " Set the number of columns a new window will have
:set textwidth=80       " I do not like going all the way to the edge 
:set wrapmargin=2       " Word wraps 2 character spaces from the margin
:set shiftround         " Rounds < & > command to the nearest mod of shiftwidth
:set scrolloff=12       " Number of lines to keep around cursor

"=============================================================================
" Programming Options
"=============================================================================
set showmatch          " Show match when inserting {}, [], or ()'s
syntax on 
set cin

"=============================================================================
" Misc
"=============================================================================
" Ignores files when autocompleting      
:set wildchar=<Tab>     " Character that starts the autocompletion
:set wildmenu           " Shows a list of possible autocompletions
:set wildmode=list      " show list and complete the first match 
:set nowritebackup      " No intermidate files when saving

:set wildignore=*.o,*.bak,*.data,*.class

autocmd BufNewFile [Mm]akefile* set formatoptions=croql comments=:#
autocmd BufNewFile .vimrc,*.vim set formatoptions=croql comments=:\"
autocmd FileType c,cpp,java set mps+==:;


setlocal textwidth=80           " used for text wrapping
match ErrorMsg '\%>80v.+'
