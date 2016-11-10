#!/usr/bin/env fish
if test ! -d ~/.vim/bundle/Vundle.vim 
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
end
updatevim
