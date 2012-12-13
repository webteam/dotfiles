Bundle "vim-ruby/vim-ruby"


autocmd FileType ruby nmap <leader>d orequire 'pry' ; binding.pry<ESC>
autocmd FileType ruby nmap <leader>D Orequire 'pry' ; binding.pry<ESC>
