" LustyJuggler
"
" LustyJuggler is a high speed buffer juggler.  Having to consciously think
" about which buffer you need to switch to sucks, so use this instead.
Bundle "vim-scripts/LustyJuggler"
map ,g :LustyJuggler<CR>
map ,j :LustyJugglePrevious<CR>
let g:LustyJugglerShowKeys = '1'
let g:LustyJugglerSuppressRubyWarning = 1
