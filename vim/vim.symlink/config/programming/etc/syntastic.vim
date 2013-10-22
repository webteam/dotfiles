" Syntax checking hacks for vim
NeoBundle "scrooloose/syntastic"

let g:syntastic_auto_loc_list=1

let g:syntastic_mode_map = { 'mode': 'passive',
     \ 'active_filetypes': ['go'] }

nmap <leader>sc :SyntasticCheck<CR>
