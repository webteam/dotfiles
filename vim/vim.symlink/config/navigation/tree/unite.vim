NeoBundle 'Shougo/unite.vim'


" Configuration

let g:unite_winheight = 10
let g:unite_split_rule = 'botright'


let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>, :<C-u>Unite -no-split -buffer-name=files   -start-insert buffer file_rec/async:!<cr>
nnoremap <leader>m :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>k :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>s :Unite -quick-match buffer<cr>


" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  nmap <buffer> <ESC>      <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

  nmap <buffer> <C-p>     <Plug>(unite_toggle_auto_preview)


  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction


if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

if executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif



"
" Plugins
"

NeoBundle 'h1mesuke/unite-outline'
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>


NeoBundle 'sgur/unite-git_grep'
