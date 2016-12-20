set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set shell=bash
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dag/vim-fish'
Plugin 'bogado/file-line'
Plugin 'jlfwong/vim-mercenary'
Plugin 'scrooloose/nerdtree.git'
Plugin 'rking/ag.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'vim-scripts/taglist.vim'

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
set cursorline
set scrolloff=5

" ctags
set tags=./tags;

" NERDTree
nmap <leader>k :NERDTreeToggle<cr>

" CommandT
let g:CommandTWildIgnore=&wildignore . "sbuild*"
let g:CommandTMaxFiles=300000

" taglist
nnoremap <silent> <leader>l :TlistToggle<CR>
