

" use , as leader key
let mapleader=","
noremap \ ,


" move between splits with ctrl+ h j k l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" remappings
nnoremap <C-s> :w<CR>

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>p :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>o :bprevious<CR>


" FZF remaps
" fzf files with , t
nnoremap <leader>t :Files<CR>
" rg code with , f
nnoremap <leader>f :Rg<CR>

" NCM2 remaps
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" vim-autoformat
noremap <F3> :Autoformat<CR>

" Greping and finding

" use ` + s to grep code
" nnoremap <leader>s :FlyGrep<cr>
