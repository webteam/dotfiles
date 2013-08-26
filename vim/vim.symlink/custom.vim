let hostname = substitute(system('hostname'), '\n', '', '')

if filereadable($HOME . "/.vim/hosts/" . hostname . ".vim")
  :silent exec ":source " . $HOME . "/.vim/hosts/" . hostname . ".vim"
else
  :silent exec ":source " . $HOME . "/.vim/hosts/default.vim"
endif
