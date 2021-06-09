""      ______      __
""     / ____/___  / /___  __________
""    / /   / __ \/ / __ \/ ___/ ___/
""   / /___/ /_/ / / /_/ / /  (__  )
""   \____/\____/_/\____/_/  /____/

"True colors on
set termguicolors

"Setting the background to dark
set background=light

"Enables cursor line position tracking:
set cursorline

"Setting the colorscheme
colorscheme default

"Setting the airline colorscheme (can be different from overall colorscheme)
let g:airline_theme='transparent'

"Since I use the default theme, the following makes gitgutter transparent
:highlight SignColumn guibg=transparent

"Making the glyphs color coded
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"Default theme tweaks
:hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=#2f222c
:highlight LineNr              guifg=#f48024
:highlight CursorLineNr        guifg=#fA872A gui=italic
:highlight Comment             guifg=#555555 cterm=italic gui=italic
:highlight Visual              guibg=#f48024 guifg=#111111 cterm=italic gui=italic
:highlight Identifier          guifg=#3b9acd
:highlight Keyword             guifg=#00ff00
:highlight Character           guifg=#22aa22
:highlight String              guifg=#c09000
:highlight SpecialCharacter    guifg=#ffaa00
:highlight Operator            guifg=#ffcc00
:highlight Constant            guifg=#0040ff
:highlight Statement           guifg=#00ff00
