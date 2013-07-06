" Rooter
"
" Changes Vim working directory to project root (identified by presence of
" DVCS directory)
NeoBundle "airblade/vim-rooter"
autocmd BufEnter *.rb,*.html,*.haml,*.erb,*.rjs,*.css,*.js,*.php :Rooter

