Bundle "vim-ruby/vim-ruby"


autocmd FileType ruby nmap <leader>d O require 'pry' ; binding.pry<CR><ESC>
