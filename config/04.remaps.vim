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

" switch between current and last buffer with ctrl-a
nnoremap <C-a> <C-^>

" save with ctrl-s and <leader>s
nnoremap <C-s> :w<CR>
nnoremap <leader>ss :w<CR>

" open vertical split with file viewer
" :vertical resize 50
nnoremap <leader>of :wincmd v<bar> :Ex <bar><CR> 
" source viminit
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>

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
nnoremap <leader>e :FZF<CR>
" this causes an issue with coc.nvim, I have to fix it.
nnoremap <C-p> :FZF<CR>
nnoremap <silent> <leader>fc :BCommits<CR>
nnoremap <silent> <leader>fg :GFiles<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>fr :History<CR>
nnoremap <silent> <leader>ft :Tags<CR>
nnoremap <silent> <leader>fi :FZF<CR>
" nnoremap <leader>b :call Fzf_dev()<CR>
nnoremap <leader>b :Buffers<CR>

" fzf files with , f
nnoremap <leader>ff :Files<CR>
" rg code with , f
nnoremap <leader>g :RG<CR>
nnoremap <leader>gg :RG<CR>

" usw w!! to write a 'Read-Only' file if you forget to open with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

command! Wd write|bdelete

" resizing
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :vertical resize 100<CR>

" Open fff on press of 'a'
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

nnoremap <leader>su :!sort -u % -o %<CR>

" Toggle hlsearch
nmap <silent> <leader>h :set invhlsearch<CR>
" Greps the current word under the cursor
nmap <leader>gr :Rg! <C-r><C-w><CR>

" alternative python rename rn is for coc rename
nmap <silent> <leader>rr :Semshi rename<CR>

" generate docstring with PyDocstring
nnoremap <leader>dss :Pydocstring<CR>
nnoremap <leader>ds <Plug>(pydocstring)


" python folds
" fold docstrings
" nnoremap <leader>zzf vifzf
nnoremap <leader>zzd jv/"""<CR>kzf

" nnoremap j jzz
" nnoremap k kzz

" python docstrings
" nnoremap <leader>as 0i>>> $j
" nnoremap <leader>ac 0i... $j
" nnoremap <leader>dar
