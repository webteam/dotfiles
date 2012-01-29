" ========================================
" Custom vim keymaps
" ========================================
"
"
" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","


"! ,w || Fast saving
nmap <leader>w :w!<cr>

"! jj || Switch to normal mode like a boss
inoremap jj <Esc>:w<CR>

"! ,d || Close buffer
noremap <silent> ,dd :close<CR>


inoremap <M-o>       <Esc>o
"! <C-k> || ->
"! ;; || append ; at end of line and save
inoremap ;;  <ESC>A;<Esc>:w<CR>
imap <C-k> ->
"! <C-l> || =>
imap <C-l> <space>=><space>




" ========================================
" Custom behaviour
" ========================================

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Save on focus lost
" http://stackoverflow.com/questions/2968548/vim-return-to-command-mode-when-focus-is-lost
"au FocusLost,TabLeave * call feedkeys("\<C-\>\<C-n>")
au FocusLost * :wa
":au FocusLost * call PopOutOfInsertMode()

"function! PopOutOfInsertMode()
    "if v:insertmode
        "feedkeys("\<C-\>\<C-n>")
    "endif
    ":wa
"endfunction



" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
