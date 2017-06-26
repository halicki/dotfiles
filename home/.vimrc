set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set shell=bash
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bogado/file-line'
Plugin 'scrooloose/nerdtree.git'
Plugin 'rking/ag.vim'
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
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set relativenumber
set cursorline

" FINDING FILES

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu


" TAG JUMPING

" ctags
set tags=./tags;

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags


" NERDTree
nmap <leader>k :NERDTreeToggle<cr>

" CommandT
let g:CommandTWildIgnore=&wildignore . "sbuild*"
let g:CommandTMaxFiles=300000

" taglist
nnoremap <silent> <leader>l :TlistToggle<CR>

" HG
nmap <leader>hb :HGblame<cr>
nmap <leader>hs <Esc>yiw<cr>:HGshow"<cr>

" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 
