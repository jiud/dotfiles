execute pathogen#infect()

set background=light
set encoding=UTF-8
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set linebreak
set nowrap
"set clipboard to be the system clipboard
set clipboard=unnamedplus 
syntax enable
filetype plugin indent on
set number
set relativenumber
"set foldmethod=indent

"Open NERDtree automatically when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Shortcut for NERDtree
map <C-n> :NERDTreeToggle<CR>

"paste without yanking
vnoremap p "_dP

let g:indentLine_char_list = ['│', '¦', '┆', '┊']
let g:indentLine_color_term = 239

let g:airline_powerline_fonts = 1

