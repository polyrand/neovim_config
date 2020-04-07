

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

" Alig remaps
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" FZF remaps
nnoremap <C-p> :FZF<CR>
" fzf files with , t
nnoremap <leader>t :Files<CR>
" rg code with , f
nnoremap <leader>f :Rg<CR>

" usw w!! to write a 'Read-Only' file if you forget to open with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

