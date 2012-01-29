" Tagbar
"
" Tagbar is a vim plugin for browsing the tags of source code files. It
" provides a sidebar that displays the ctags-generated tags of the current
" file, ordered by their scope. This means that for example methods in C++ are
" displayed under the class they are defined in.
Bundle "majutsushi/tagbar"
let g:tagbar_usearrows = 1
noremap <leader>t :TagbarToggle<CR>

"! ,t - toggle Tagbar window
