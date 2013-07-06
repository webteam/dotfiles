" An extensible & universal comment vim-plugin that also handles embedded
" filetypes
NeoBundle "tomtom/tcomment_vim"


"! ,c<Space> || Comment the current line
:nmap <leader>c<space> :TCommentInline<CR>
"! gc{motion}   :: Toggle comments
"! gcc          :: Toggle comment for the current line
"! gC{motion}   :: Comment region
"! gCc          :: Comment the current line
