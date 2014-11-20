set background=dark
colorscheme hybrid

let g:airline_powerline_fonts = 0
let g:airline_theme = 'dark'

noremap <F11> <Esc>:doautocmd Syntax<CR>
inoremap <F11> <C-o>:doautocmd Syntax<CR>


if has("gui_running")
  set guioptions=egmrt

  set guifont=Menlo\ for\ Powerline\ 10
endif

autocmd FileType php set tabstop=2|set shiftwidth=4|set expandtab

set lines=65 " Set window height
set columns=117 " Set window width 'co'
