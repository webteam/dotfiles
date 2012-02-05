" Fuzzy file, buffer, mru and tag finder
Bundle 'kien/ctrlp.vim'



" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10
let g:CommandTMaxHeight = 10

" Mapping from ctrlp we always use
if has('gui_macvim')
  nnoremap <silent><D-u> :CtrlPCurFile<CR>
  nnoremap <silent><D-y> :CtrlPMRUFiles<CR>
else
  nnoremap <silent><M-u> :CtrlPCurFile<CR>
  nnoremap <silent><M-y> :CtrlPMRUFiles<CR>
end

" Also map leader commands
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>y :CtrlPMRUFiles<CR>