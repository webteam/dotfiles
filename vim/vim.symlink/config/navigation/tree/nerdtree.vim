" Nerdtree
"
" A tree explorer plugin for vim
NeoBundle "scrooloose/nerdtree"
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>f :NERDTreeFind<CR>
" How can I open a NERDTree automatically when vim starts up?
" autocmd vimenter * NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen=1


" https://github.com/scrooloose/nerdtree/issues/108
let g:NERDTreeDirArrows=0

"! ,n || toggle NERDTree
"! ,f || find the current file in NERDTree
