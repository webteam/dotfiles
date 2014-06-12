" A vim plugin to display the indention levels with thin vertical lines
NeoBundle "Yggdroot/indentLine"

let g:indentLine_char = '┊'
let g:indentLine_faster = 1

nmap ,ig :IndentLinesToggle<CR>
"! ,ig || toggle indent guides
