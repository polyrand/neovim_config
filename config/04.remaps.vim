" use , as leader key
let mapleader=","
noremap \ ,
map <space> <leader>
let maplocalleader = ","

" apply back with F9
nnoremap <F9> :Black<CR>

" move between splits with ctrl+ h j k l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" Move visual block selection with <C-[jk]> in visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Delete all trailing whitespaces
nmap <silent> <leader>tw :%s/\s\+$//<CR>:let @/=''<CR>``
" Make the just typed word uppercase
imap <C-f> <esc>gUiwgi
" Yank the whole file
nmap <leader>yf ggyG

" save with ctrl-s
nnoremap <C-s> :w<CR>

" close tab with <leader>ct
nnoremap <leader>tc :tabclose<CR>

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>p :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>o :bprevious<CR>

" Alig remaps
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

" FZF remaps
nnoremap <C-p> :FZF<CR>
nnoremap <silent> <leader>fc :BCommits<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>fr :History<CR>
nnoremap <silent> <leader>ft :Tags<CR>
nnoremap <silent> <leader>fi :FZF<CR>
" nnoremap <leader>b :call Fzf_dev()<CR>
nnoremap <leader>b :Black<CR>

" fzf files with , f
nnoremap <leader>f :Files<CR>
" rg code with , f
nnoremap <leader>g :Rg<CR>

" usw w!! to write a 'Read-Only' file if you forget to open with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Open fff on press of 'f'
nnoremap <leader>a :F<CR>

" tabs
nnoremap <leader><S-Tab> :tabp<CR>
nnoremap <leader><Tab> :tabn<CR>
" Tab navigation like Firefox.
nnoremap <C-t>     :tabnew<CR>
" Alternatively use
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

nnoremap j jzz
nnoremap k kzz
