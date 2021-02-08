""      ______      __               
""     / ____/___  / /___  __________
""    / /   / __ \/ / __ \/ ___/ ___/
""   / /___/ /_/ / / /_/ / /  (__  ) 
""   \____/\____/_/\____/_/  /____/  
""                                   

"True colors on
set termguicolors

set background=dark

colorscheme one

highlight Cursor guifg=white guibg=black

"Enables cursor line position tracking:
set cursorline

" Removes the underline causes by enabling cursorline:
"highlight clear cursorline
" Sets the line numbering to red background:
highlight CursorLineNR cterm=bold ctermfg=yellow
" Change the line number colors
highlight LineNr ctermfg=237
"makes visual mode underlined and yellow
hi Visual ctermfg=Yellow ctermbg=NONE cterm=bold,underline 
