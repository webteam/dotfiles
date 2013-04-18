" Autoclose ([{"'

" Bundle 'jiangmiao/auto-pairs'



" Alternatives:

" delimitMate
" ===========

" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
Bundle "Raimondi/delimitMate"

let delimitMate_expand_space = 1
let delimitMate_expand_cr = 1

imap <C-l> <Plug>delimitMateS-Tab
" <C-l>  || will jump over a single closing delimiter
" <C-G>g || will jump over contiguous delimiters and/or quotes

" smartinput
" ==========

" Provide smart input assistant
" Bundle "kana/vim-smartinput"


" autoclose
" =========

" This plugin for Vim enable an auto-close chars feature for you. For instance
" if you type an '(', ``autoclose`` will automatically insert a ')' and put
" the cursor between than.
" Bundle 'Townk/vim-autoclose'

