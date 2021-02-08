""      ______                           __
""     / ____/__  ____  ___  _________ _/ /
""    / / __/ _ \/ __ \/ _ \/ ___/ __ `/ /
""   / /_/ /  __/ / / /  __/ /  / /_/ / / 
""   \____/\___/_/ /_/\___/_/   \__,_/_/  

"Needs to be set, because this .vim file uses some weird UTF-8 characters
"(like the interpunct)"
scriptencoding utf-8
set encoding=UTF-8

"Set clipboard to be the system clipboard (LINUX SPECIFIC OPTION)
set clipboard+=unnamedplus

"Foldmethod set to manual
set foldmethod=manual

"Line numbers on
set number

"Line numbers are relative to the current cursor line 
"(useful for yanking and cutting)
set relativenumber

set shiftwidth=4

"Searching is not case sensitive
set ignorecase

"Searching with a capital letter in the query makes the search case sensitive
set smartcase

"Always use spaces for indentation
set expandtab

"Tab inputs X spaces, where X is 'tabstop = X'
set tabstop=4

"Set wrap off by default
set nowrap

"If wrapping is ever enabled, tell vim not to wrap in the middle of the word
set linebreak

"Commands that are typed are shown on the bottom right corner
set showcmd

"Set mouse controls on
set mouse=a

"Enable for showing spaces, tabs, etc as characters
set list

"Showing trailing spaces and tabs as specific characters (default: interpunct)
set listchars=tab:>.,trail:·

"IF TABS ARE THE INDENTS, this displays them 
"set lcs=tab:\│\  
