""       _   __              ________             
""      / | / /__  _________/ /_  __/_______  ___ 
""     /  |/ / _ \/ ___/ __  / / / / ___/ _ \/ _ \
""    / /|  /  __/ /  / /_/ / / / / /  /  __/  __/
""   /_/ |_/\___/_/   \__,_/ /_/ /_/   \___/\___/ 
""   

"Open NERDtree automatically when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Shortcut for NERDtree
map <C-n> :NERDTreeToggle<CR>

"some nice icons (credit Vim-Reaper)
let g:NERDTreeIndicatorMapCustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }
