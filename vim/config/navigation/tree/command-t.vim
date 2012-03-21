
" The Command-T plug-in provides an extremely fast, intuitive mechanism for
" opening files with a minimal number of keystrokes. It's named 'Command-T'
" because it is inspired by the 'Go to File' window bound to Command-T in
" TextMate.
Bundle "Command-T"
let g:CommandTMaxHeight=20


"! ,t || brings up the Command-T file window
"! ,, || brings up the Command-T file window
"! ,u || brings up the Command-T file window (relative to current dir)
"! <D-t> || brings up the Command-T file window


" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''
if has('ruby')
  " We've got Ruby, use Command T

  " Conditional Mappings
  if has("gui_macvim")
    nnoremap <silent><D-t> :CommandT<CR>
  else
    nnoremap <silent><M-t> :CommandT<CR>
  endif

  " Leader Commands
  nnoremap <leader>t :CommandT<CR>
  nnoremap <leader>, :CommandT<CR>
  nnoremap <leader>u :CommandT %%<CR>
else
  " Fallback on ctrlp.vim if Ruby for Command T not available

  " Conditional Mappings
  if has("gui_macvim")
    let g:ctrlp_map = '<D-t>'
  else
    let g:ctrlp_map = '<M-t>'
  endif

  " Leader Commands
  nnoremap <leader>t :CtrlPRoot<CR>
endif
