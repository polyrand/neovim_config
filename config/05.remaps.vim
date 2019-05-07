

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
" nnoremap <C-p> :FZF<CR>
" fzf files with , t
nnoremap <leader>t :Files<CR>
" rg code with , f
nnoremap <leader>f :Rg<CR>

" NCM2 remaps

" vim-autoformat
noremap <F3> :Autoformat<CR>

" Greping and finding

" use ` + s to grep code
" nnoremap <leader>s :FlyGrep<cr>
"
" snippets
" " Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-n>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-p>"
let g:UltiSnipsRemoveSelectModeMappings = 0

" usw w!! to write a 'Read-Only' file if you forget to open with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
