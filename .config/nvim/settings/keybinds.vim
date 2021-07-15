""       __ __           __    _           ___
""      / //_/__  __  __/ /_  (_)___  ____/ (_)___  ____ ______
""     / ,< / _ \/ / / / __ \/ / __ \/ __  / / __ \/ __ `/ ___/
""    / /| /  __/ /_/ / /_/ / / / / / /_/ / / / / / /_/ (__  )
""   /_/ |_\___/\__, /_.___/_/_/ /_/\__,_/_/_/ /_/\__, /____/
""             /____/                            /____/

"For misclicks
:command WQ wq
:command Wq wq
:command W w
:command Q q


"Function for trimming the trailing whitespace.
"Yanked from: https://vim.fandom.com/wiki/Remove_unwanted_spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction

"Make the reindentation command remove traling white spaces too (whole file)
nnoremap gg=G :call TrimWhiteSpace()<CR> gg=G :echo 'Trailing whitespace removed, Indentation fixed.'<CR>

"Make Y yank till end of line
nnoremap Y y$
"Make x not yank, just delete (by yanking to black hole register)
nnoremap x "_x

"For switching buffers
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>

"Quickly display relative  line numbers or not (normal mode only)
nnoremap <C-y> :set relativenumber!<CR>

"For operating quickly in other languages, for example in Greek:
"I have the 'ι' for insert mode, like 'i'
"and 'ς' for write, in place of 'w'

:cmap ς w
:nmap ι i
:nmap ο o
:nmap α a
:cmap ς; wq
:nmap π p
:nmap χ x
:nmap ρ r
:nmap υ y
:nmap η h
:nmap ξ j
:nmap κ k
:nmap λ l
:nmap ς w
:nmap β b
