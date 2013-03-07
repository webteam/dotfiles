" A Vim plugin which shows a git diff in the gutter (sign column).
Bundle 'airblade/vim-gitgutter'


"! <C-Down> || GitGutterNextHunk
"! <C-Up> || GitGutterPrevHunk
"! ,xgg || ToggleGitGutterLineHighlights
nmap <C-Down> :GitGutterNextHunk<CR>
nmap <C-Up> :GitGutterPrevHunk<CR>


nmap <leader>xgg :ToggleGitGutterLineHighlights<CR>

" Set syntax highlighting for signcolum
au VimEnter * highlight clear SignColumn
highlight clear SignColumn


" http://superuser.com/questions/558876/how-can-i-make-the-sign-column-show-up-all-the-time-even-if-no-signs-have-been-a
sign define dummy
execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
