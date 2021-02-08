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

"one theme
Plug 'rakr/vim-one'

"spaceduck theme
Plug 'pineapplegiant/spaceduck'

"many themes lmao
Plug 'gmist/vim-palette'

"color color codes
Plug 'chrisbra/Colorizer'

"IF SPACES ARE INDENTS
"make space indents have characters
Plug 'Yggdroot/indentLine'

"really cool status bar 
Plug 'vim-airline/vim-airline'

"themes for airline
Plug 'vim-airline/vim-airline-themes'

"git indicators for vim
Plug 'airblade/vim-gitgutter'

"highlight html-like tags
Plug 'Valloric/MatchTagAlways'

"nice animation on scrolling
Plug 'yuttie/comfortable-motion.vim'

"Zen mode on vim
Plug 'junegunn/goyo.vim' 

"devicons in nerdtree and airline
"ALWAYS LOAD LAST 
Plug 'ryanoasis/vim-devicons'


call plug#end()


