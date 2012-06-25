" Fuzzy file, buffer, mru and tag finder
Bundle 'kien/ctrlp.vim'


" TODO
"! ,j || switch to your previously used buffer
"! ,k || opens mini buffer explorer
"! ,, || brings up the Command-T file window

nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>k :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>



let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|\.hg$\|\.svn|\.rsync_cache$',
	\ 'file': '\.swp$\|\.so$\|\.zip$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

let g:ctrlp_user_command = {
  	\ 'types': {
  		\ 1: ['.git/', 'cd %s && git ls-files'],
  		\ 2: ['.hg/', 'hg --cwd %s locate -I .'],
  		\ },
  	\ 'fallback': 'find %s -type f'
  	\ }
