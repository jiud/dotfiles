"set clipboard to be the system clipboard
set clipboard+=unnamedplus 
set foldmethod=manual
set encoding=UTF-8
set relativenumber
set shiftwidth=4
set ignorecase
"always use spaces for indentation
set expandtab
set tabstop=4
set smartcase
set linebreak
set showcmd
set nowrap
set number

"enable for showing spaces
"set list

"IF TABS ARE THE INDENTS, this displays them 
"set lcs=tab:\│\  

"""
""" Useful keybindings
"""

"" I mislick a lot
:command WQ wq
:command Wq wq
:command W w
:command Q q


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

"color color codes
Plug 'chrisbra/Colorizer'

"IF SPACES ARE INDENTS
"make space indents have characters
Plug 'Yggdroot/indentLine'

"really cool status bar 
Plug 'vim-airline/vim-airline'

"themes for airline
Plug 'vim-airline/vim-airline-themes'

"highlight html-like tags
Plug 'Valloric/MatchTagAlways'

"devicons in nertree and ailine
"ALWAYS LOAD LAST 
Plug 'ryanoasis/vim-devicons'

call plug#end()


"""
""" COLOR SETTINGS
"""
"""

"True colors on
set termguicolors

set background=dark
"colorscheme gruvbox
"colorscheme nord
colorscheme dracula 

highlight Cursor guifg=white guibg=black

"ράδειγμα Enables cursor line position tracking:
set cursorline

" Removes the underline causes by enabling cursorline:
"highlight clear cursorline
" Sets the line numbering to red background:
highlight CursorLineNR cterm=bold ctermfg=yellow
" Change the line number colors
highlight LineNr ctermfg=237
"makes visual mode underlined and yellow
hi Visual ctermfg=Yellow ctermbg=NONE cterm=bold,underline 


"""
""" NERDTree SETTINGS
"""
"""


"Open NERDtree automatically when no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Shortcut for NERDtree
map <C-n> :NERDTreeToggle<CR>



"""
""" Register SETTINGS
"""
"""
"paste without yanking
vnoremap p "_dP
"x is blackhole register so deleted things dont get yanked
vnoremap x "_x


"""
""" indentLine SETTINGS
"""
"""

let g:indentLine_char_list = ['│', '¦', '┆', '┊']
let g:indentLine_color_term = 239

"""
""" Airline SETTINGS
"""

let g:airline_powerline_fonts = 1

"""
""" MatchTagAlways SETTINGS
"""
"""
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'html.handlebars' : 1,
    \}


""""
""""
""""  COC SETTINGS
""""
""""

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
