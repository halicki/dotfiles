set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set shell=bash
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dag/vim-fish'

call vundle#end()

syntax enable
filetype plugin indent on

source $VIMRUNTIME/mswin.vim
behave mswin
