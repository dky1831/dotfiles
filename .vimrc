" .vimrc
"
" Copyright (c) 2019 dky1831
"
" This file is released under the MIT License; see file 'LICENSE'.

" Set all settings to default
set all&

" Normal settings
set number		        " Show the line number
colorscheme murphy	        " Set the color scheme to 'murphy'
set expandtab		        " Convert tabs to spaces
set softtabstop=8	        " Set the tab width to '8'
set showcmd		        " Show the command being input
set hidden		        " Allow switching buffer without saving
set laststatus=2                " Always show the status bar
filetype plugin indent on       " Enable filetype settings
set smartindent                 " Enable auto indent
set backspace=indent,eol,start  " Allow deletion of indents, deletion across lines and deletion of characters before the point where start typing
set autoread                    " Reload when the file is modified
set cursorline                  " Highlight the line where the cursor is
set cursorcolumn                " Highlight the column where the cursor is
set incsearch                   " Enable incremental search
set enc=utf-8                   " Set the charset to UTF-8
set wrapscan                    " Move to beginning of the file when end of the file is reached while searching
set formatoptions=ro            " Comment out the next line of comment line automatically

" Key mapping settings

" Turn off the highlights when searching
nnoremap <Esc><Esc> :set nohlsearch<NL>

" Set j and k to gj and gk
nnoremap j gj
nnoremap k gk

" Apply changes of ~/.vimrc
nnoremap <C-j> :source ~/.vimrc<NL>

" Edit ~/.vimrc
nnoremap <C-k> :e ~/.vimrc<NL>

" Don't comment out the next line of comment line automatically
nnoremap <C-l> :set formatoptions=<NL>

" Comment out the next line of comment line automatically
nnoremap <C-n> :set formatoptions=ro<NL>

" Switch to next buffer
nnoremap <C-p> :bnext<NL>

" Delete a line
nnoremap <C-g> Gdd<C-o>

" Search case-insensitively except when the search pattern contains upper case letters
nnoremap <C-h><C-j> :set hlsearch ignorecase smartcase<NL>/

" Search case-sensitively
nnoremap <C-h><C-k> :set hlsearch noignorecase nosmartcase<NL>/

" Show the list of the key mappings assigned by 'nnoremap'
nnoremap <C-h><C-l> :nnoremap<NL>

" Switch to previous buffer
nnoremap <C-h><C-n> :bprev<NL>

" Show man page of shell command
nnoremap <C-h><C-p> :!man 1 

" Show man page of system call
nnoremap <C-h><C-g> :!man 2 

" Show man page of function in the standard C library
nnoremap <C-h><C-h><C-j> :!man 3 
