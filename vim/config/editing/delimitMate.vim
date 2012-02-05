" Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc. 
Bundle "Raimondi/delimitMate"

imap <C-l> <Plug>delimitMateS-Tab


"! <C-l>  || will jump over a single closing delimiter
"! <C-G>g || will jump over contiguous delimiters and/or quotes