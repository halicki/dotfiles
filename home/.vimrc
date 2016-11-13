set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set shell=bash
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dag/vim-fish'
Plugin 'tpope/vim-surround'
Plugin 'bogado/file-line'
Plugin 'jlfwong/vim-mercenary'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'

call vundle#end()

syntax enable
filetype plugin indent on
" all related vundle -----

set incsearch
set ignorecase
set smartcase
set hlsearch
set nowrap
set number
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set relativenumber

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" ctags
set tags=./tags;

" NERDTree
nmap <leader>k :NERDTreeToggle<cr>
