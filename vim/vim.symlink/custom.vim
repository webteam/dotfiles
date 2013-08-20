let hostname = substitute(system('hostname'), '\n', '', '')

:exec ":source " . $HOME . "/.vim/hosts/" . hostname . ".vim"
