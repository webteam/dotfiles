let hostname = substitute(system('hostname'), '\n', '', '')

if filereadable($HOME . "/.vim/hosts/" . hostname . ".vim")
  :exec ":source " . $HOME . "/.vim/hosts/" . hostname . ".vim"
endif
