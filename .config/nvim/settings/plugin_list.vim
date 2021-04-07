""       ____  __            _           
""      / __ \/ /_  ______ _(_)___  _____
""     / /_/ / / / / / __ `/ / __ \/ ___/
""    / ____/ / /_/ / /_/ / / / / (__  ) 
""   /_/   /_/\__,_/\__, /_/_/ /_/____/  
""                 /____/                

call plug#begin('~/.config/nvim/plugged')

"
"
" Theme and color plugins
"
"

"Themes for airline
Plug 'vim-airline/vim-airline-themes'

"Really cool status bar 
Plug 'vim-airline/vim-airline'

"Sidebar for file navigation
Plug 'preservim/nerdtree'

"A lot of themes
Plug 'chriskempson/base16-vim'

" Specific Themes 

"" Low constrast themes
Plug 'rakr/vim-one'

"" High constrast themes
""" Gruvbox, a variably high contrast theme
Plug 'morhetz/gruvbox'
""" Molokai, a mildly high consrast theme
Plug 'tomasr/molokai'
""" Spaceduck, a fairly high contrast theme
Plug 'pineapplegiant/spaceduck'
""" Hyper, a very high contrast theme
Plug 'jdsimcoe/hyper.vim'

"
"
" Git integration
"
"

"Git change indicators for vim
Plug 'airblade/vim-gitgutter'

"Git command integration on vim, use git commands within vim (with :Git <command> primarily)
Plug 'tpope/vim-fugitive' 

"
"
" Org-mode specific
"
"

"Bring org-mode to vim
Plug 'jceb/vim-orgmode'

"
"
" Text manipulation helpers
"
"

"coc plugin, autocomplete and syntax checking
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"If spaces are indents make space indents have characters
Plug 'Yggdroot/indentLine'

"Highlighting/Coloring of the color codes within vim (call it with :ColorHighlight)
Plug 'chrisbra/Colorizer'

"Alignment of text range with a reference character by using command: Tab/<character"
Plug 'godlygeek/Tabular'


"
"
" Web-Dev specific plugins
"
"

"Syntax for mustache and handlebars code
Plug  'jsit/vim-mustache-handlebars' 

"highlight html-like tags
Plug 'Valloric/MatchTagAlways'

"
"
" Miscellanious
"
"

"Nice animation on scrolling with <C-f> and <C-b>
Plug 'yuttie/comfortable-motion.vim'

"Zen mode on vim
Plug 'junegunn/goyo.vim' 

"Devicons in nerdtree and airline
"NOTE: ALWAYS LOAD THIS LAST 
Plug 'ryanoasis/vim-devicons'

call plug#end()
