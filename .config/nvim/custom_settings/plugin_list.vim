"""
""" LOADING PLUGINS
"""

call plug#begin('~/.config/nvim/plugged')

"nerdtree
Plug 'preservim/nerdtree'

"mustache syntax
Plug  'jsit/vim-mustache-handlebars' 

"coc plugin, autocomplete and syntax checking
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"gruvbox theme
Plug 'morhetz/gruvbox'

"nord theme
Plug 'arcticicestudio/nord-vim'

"dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }

"spaceduck theme
Plug 'pineapplegiant/spaceduck'

"color color codes
Plug 'chrisbra/Colorizer'

"IF SPACES ARE INDENTS
"make space indents have characters
Plug 'Yggdroot/indentLine'
Plug 'tomasiser/vim-code-dark'
"really cool status bar 
Plug 'vim-airline/vim-airline'

"themes for airline
Plug 'vim-airline/vim-airline-themes'

"highlight html-like tags
Plug 'Valloric/MatchTagAlways'

"devicons in nerdtree and airline
"ALWAYS LOAD LAST 
Plug 'ryanoasis/vim-devicons'


call plug#end()

