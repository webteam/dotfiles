NeoBundle "nono/vim-handlebars"

if has("autocmd")
  au BufNewFile,BufRead *.handlebars,*.hbs set filetype=handlebars
endif
