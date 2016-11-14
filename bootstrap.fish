#!/usr/bin/env fish
# vim
if test ! -d ~/.vim/bundle/Vundle.vim 
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
end
updatevim

# tmux
if test ! -d ~/.tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
end
~/.tmux/plugins/tpm/scripts/install_plugins.sh
