" LustyJuggler
"
" LustyJuggler is a high speed buffer juggler.  Having to consciously think
" about which buffer you need to switch to sucks, so use this instead.
NeoBundle "vim-scripts/LustyJuggler"
map ,g :LustyJuggler<CR>
map ,j :LustyJugglePrevious<CR>
let g:LustyJugglerShowKeys = '1'
let g:LustyJugglerSuppressRubyWarning = 1

"! ,g || command bar shows names of your currently opened buffers in most-recently-used order
"! ,j || switch to your previously used buffer
