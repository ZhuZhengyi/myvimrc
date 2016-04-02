
if filereadable(expand("~/.vim/plugins.vim"))
    source ~/.vim/plugins.vim
endif

if filereadable(expand("~/.vim/vimrc.local"))
    source ~/.vim/vimrc.local
endif
