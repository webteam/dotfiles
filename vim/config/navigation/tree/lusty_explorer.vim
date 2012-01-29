" LustyExplorer
"
" LustyExplorer is a fast and responsive way to manage files and buffers in
" Vim.  It includes a filesystem explorer, a buffer switcher, and a buffer
" grep for searching through and switching between files and buffers quickly,
" all through a mostly common interface.
Bundle 'vim-scripts/LustyExplorer'
map ,k :LustyBufferExplorer<CR>

"! ,lf || opens filesystem explorer
"! ,lr || opens filesystem explorer at the directory of the current file
"! ,k || opens mini buffer explorer
"! ,lg || grep in currently open buffers
