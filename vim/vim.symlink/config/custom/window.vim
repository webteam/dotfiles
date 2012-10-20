" Window Movement
"! <C-hjkl> || move between windows
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

"! ,ww || equal size windows
nmap <silent> <leader>ww :wincmd =<CR>

" Window Splitting
"! ,hs || vertical split
nmap <silent> <leader>hs :split<CR>
"! ,vs || vertical split
nmap <silent> <leader>vs :vsplit<CR>
"! ,cs || close (split) window
nmap <silent> <leader>sc :close<CR>
