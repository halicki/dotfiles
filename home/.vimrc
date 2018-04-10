" Arkadiusz Halicki config
"
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python

call plug#begin('~/.local/share/nvim/plugged')
Plug '//nvie/vim-flake8'
call plug#end()

