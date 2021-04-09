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

" Make Y yank till end of line
nnoremap Y y$

"For switching buffers 
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>

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
