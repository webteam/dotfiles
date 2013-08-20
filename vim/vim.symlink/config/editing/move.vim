" Plugin to move lines and selections up and down
NeoBundle 'matze/vim-move'

let g:move_map_keys = 0

vmap <C-J> <Plug>MoveBlockDown
vmap <C-K> <Plug>MoveBlockUp
nmap <C-J> <Plug>MoveLineDown
nmap <C-K> <Plug>MoveLineUp
