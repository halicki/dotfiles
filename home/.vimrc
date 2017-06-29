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
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rhubarb'
Plugin 'wincent/command-t'
Plugin 'vim-scripts/taglist.vim'
Plugin 'junegunn/fzf'
Plugin 'drmingdrmer/vim-toggle-quickfix'

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

" Leader
let mapleader=","

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
nmap <leader>f :NERDTreeFind<cr>

" CommandT
let g:CommandTWildIgnore=&wildignore . "sbuild*"
let g:CommandTMaxFiles=300000

" taglist
nnoremap <silent> <leader>l :TlistToggle<CR>

" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" Splits
" We can use different key mappings for easy navigation between splits to save 
" a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

"Max out the height of the current split
" ctrl+w _

"Max out the width of the current split
" ctrl+w |

"Normalize all split sizes, which is very handy when resizing terminal
" ctrl+w =

"Swap top/bottom or left/right split
" ctrl+W R

"Break out current window into a new tabview
" ctrl+W T

"Close every window in the current tabview but the current one
" ctrl+W o

" FZF
noremap <C-F> :FZF<cr>

" Toggle quickFix window
nmap <C-g><C-o> <Plug>window:quickfix:toggle

" open ag.vim
nnoremap <leader>a :Ag 
