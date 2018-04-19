" Arkadiusz Halicki config
"
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:python3_host_prog = $HOME
let g:python3_host_prog .= '/.pyenv/versions/3.6.5/envs/neovim/bin/python'

" Python
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'nvie/vim-flake8'
Plug 'Valloric/YouCompleteMe'
call plug#end()

" Press F3 to toggle hl.
nnoremap <F3> :set hlsearch! hlsearch?<CR>

