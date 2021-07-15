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
let g:airline_theme='monochrome'

"Since I use the default theme, the following makes gitgutter transparent
:highlight SignColumn guibg=transparent

"Making the glyphs color coded
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"Default theme tweaks
"For dark theme
:hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=white guibg=#2f222c
"For light theme
":hi CursorLine cterm=NONE ctermbg=grey ctermfg=white guibg=#dddddd
:highlight LineNr              guifg=#51565b
:highlight CursorLineNr        guifg=#51565b cterm=bold gui=bold
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
