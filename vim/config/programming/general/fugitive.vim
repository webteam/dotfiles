" fugitive
"
" Git integration
Bundle 'tpope/vim-fugitive'

"! ,gc || git commit
nmap <Leader>gc :Gcommit<CR>

"! ,gw || git write
nmap <Leader>gw :Gwrite<CR>

"! ,gs || git status
nmap <Leader>gs :Gstatus<CR>

"! ,gp || git push
nmap <Leader>gp :Git push<CR>

"! ,gu || git pull (think _u_pdate)
nmap <Leader>gu :Git pull<CR>

"! ,gd || git diff
nmap <Leader>gd :Gdiff<CR>


"! ,gx || Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>