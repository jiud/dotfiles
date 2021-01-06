"""
""" NERDTree SETTINGS
"""
"""


"Open NERDtree automatically when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Shortcut for NERDtree
map <C-n> :NERDTreeToggle<CR>
