au FileType mail call WT_Setup_mail()


function! WT_Setup_mail()
  set lines=50
  set columns=90
  set textwidth=72

  set spelllang=de
  set spell

  iabbr sgh Sehr geehrter Herr
  iabbr sgf Sehr geehrte Frau
  iabbr mfg mit freundlichen Grüßen,

endfunction
