if exists("b:my_python_ftplugin")
    finish
endif
let b:my_python_ftplugin = 1
let $PYTHONPATH .= ":$HOME/.vim/pylibs/"

source $HOME/.vim/bundle/ropevim/ropevim.vim
