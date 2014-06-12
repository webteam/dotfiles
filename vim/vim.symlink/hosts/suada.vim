set background=dark
colorscheme Tomorrow-Night

let g:airline_powerline_fonts = 0
let g:airline_theme = 'dark'


if has("gui_running")
  set guioptions=egmrt

  set guifont=Menlo\ for\ Powerline\ 10
endif

autocmd FileType php set tabstop=2|set shiftwidth=4|set expandtab

set lines=65 " Set window height
set columns=117 " Set window width 'co'
