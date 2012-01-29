" Nerdtree
"
" A tree explorer plugin for vim
Bundle "scrooloose/nerdtree"
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>f :NERDTreeFind<CR>
" How can I open a NERDTree automatically when vim starts up?
" autocmd vimenter * NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen=1

"! ,n || toggle NERDTree
"! ,f || find the current file in NERDTree
