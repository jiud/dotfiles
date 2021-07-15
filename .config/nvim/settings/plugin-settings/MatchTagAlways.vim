""       __  ___      __       __  ______            ___    __
""      /  |/  /___ _/ /______/ /_/_  __/___ _____ _/   |  / /      ______ ___  _______
""     / /|_/ / __ `/ __/ ___/ __ \/ / / __ `/ __ `/ /| | / / | /| / / __ `/ / / / ___/
""    / /  / / /_/ / /_/ /__/ / / / / / /_/ / /_/ / ___ |/ /| |/ |/ / /_/ / /_/ (__  )
""   /_/  /_/\__,_/\__/\___/_/ /_/_/  \__,_/\__, /_/  |_/_/ |__/|__/\__,_/\__, /____/
""                                         /____/                        /____/

" Use the color of the parent group for highlighting
let g:mta_use_matchparen_group = 0
" Have default color as the tag highlighter
let g:mta_set_default_matchtag_color = 1
"The file extentions that enable MatchTagAlways for current buffer
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'html.handlebars' : 1,
    \}
