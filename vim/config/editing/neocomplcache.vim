" Ultimate auto-completion system for Vim.
" (chm) " Bundle "Shougo/neocomplcache"
" (chm) " let g:neocomplcache_enable_at_startup = 1
" (chm) "
" (chm) " "imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" (chm) "
" (chm) " let g:neocomplcache_enable_at_startup=1
" (chm) " let g:neocomplcache_enable_auto_select=1 "Select the first entry automatically
" (chm) " let g:neocomplcache_enable_cursor_hold_i=1
" (chm) " let g:neocomplcache_cursor_hold_i_time=300
" (chm) " let g:neocomplcache_auto_completion_start_length=1
" (chm) "
" (chm) " " Tab / Shift-Tab to cycle completions
" (chm) " " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" (chm) " " inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" (chm) "
" (chm) " " Required to make neocomplcache_cursor_hold_i_time work
" (chm) " " See https://github.com/Shougo/neocomplcache/issues/140
" (chm) " let s:update_time_save = &updatetime
" (chm) " autocmd InsertEnter * call s:on_insert_enter()
" (chm) "
" (chm) " function! s:on_insert_enter()
" (chm) "   if &updatetime > g:neocomplcache_cursor_hold_i_time
" (chm) "     let s:update_time_save = &updatetime
" (chm) "     let &updatetime = g:neocomplcache_cursor_hold_i_time
" (chm) "   endif
" (chm) " endfunction
" (chm) "
" (chm) " autocmd InsertLeave * call s:on_insert_leave()
" (chm) "
" (chm) " function! s:on_insert_leave()
" (chm) "   if &updatetime < s:update_time_save
" (chm) "     let &updatetime = s:update_time_save
" (chm) "   endif
" (chm) " endfunction
" (chm) " " Enable omni completion.
" (chm) " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" (chm) " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" (chm) " autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" (chm) " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" (chm) " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" (chm) "
" (chm) " " Enable heavy omni completion.
" (chm) " if !exists('g:neocomplcache_omni_patterns')
" (chm) "   let g:neocomplcache_omni_patterns = {}
" (chm) " endif
" (chm) " let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
" (chm) " "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" (chm) " let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" (chm) " let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
" (chm) " let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
