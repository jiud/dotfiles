""   ______                           __             __  __  _                 
""  / ____/__  ____  ___  _________ _/ /  ________  / /_/ /_(_)___  ____ ______
"" / / __/ _ \/ __ \/ _ \/ ___/ __ `/ /  / ___/ _ \/ __/ __/ / __ \/ __ `/ ___/
""/ /_/ /  __/ / / /  __/ /  / /_/ / /  (__  )  __/ /_/ /_/ / / / / /_/ (__  ) 
""\____/\___/_/ /_/\___/_/   \__,_/_/  /____/\___/\__/\__/_/_/ /_/\__, /____/  
""                                                               /____/        

"Needs to be set, because this .vim file uses some weird UTF-8 characters
"(like the interpunct)"
scriptencoding utf-8
set encoding=utf-8

"Set clipboard to be the system clipboard
set clipboard+=unnamedplus
set foldmethod=manual
set encoding=UTF-8
set relativenumber
set shiftwidth=4
set ignorecase
"Always use spaces for indentation
set expandtab
set tabstop=4
set smartcase
set linebreak
set showcmd
set nowrap
set number

"Set mouse controls on
set mouse=a
"Enable for showing spaces, tabs, etc as characters
set list
"Showing trailing spaces and tabs as specific characters (default: interpunct)
set listchars=tab:>.,trail:·
"IF TABS ARE THE INDENTS, this displays them 
"set lcs=tab:\│\  
