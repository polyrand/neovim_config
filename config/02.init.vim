" General
syntax enable 
set number
set incsearch
set ignorecase
set history=500
filetype plugin on
filetype indent on
set autoread
set hlsearch
set showmatch
set fileencoding=utf-8
set encoding=utf-8
set gdefault
set cursorline
set cc=80


" plugins begin
" 
" call plug#begin('~/.local/share/nvim/plugged')
" 
" 
" 
" 
" 
" Plug 'tpope/vim-surround'
" " Plug 'scrooloose/syntastic'
" Plug 'altercation/vim-colors-solarized'
" " Plug 'nathanaelkane/vim-indent-guides'
" Plug 'bling/vim-airline'
" Plug 'tmhedberg/simpylfold'
" " PEP8 pyflakes
" Plug 'nvie/vim-flake8' 
" Plug 'kien/ctrlp.vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" " Plug 'w0rp/ale'
" 
" 
" 
" 
" call plug#end()
" 
" plugins end


" move between splits with ctrl+ h j k l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" remappings
nnoremap <C-s> :w<CR>
" nmap <S-Enter> o<Esc>

let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=marker
set foldlevel=99
set foldmarker={{{,}}}
" Enable folding with the spacebar
" nnoremap <space> za


" set 7 lines to the cursor when moving
set so=5

set cmdheight=1

set hid


set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" lineabreak; 100 chars 
set lbr
set tw=100

set ai " autoindent
set si " smart indent
set wrap " wrap lines


set clipboard+=unnamedplus


" solarized
set background=dark
colorscheme solarized

" Use deoplete.
" let g:deoplete#enable_at_startup = 1
" " Use TAB for completin
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ deoplete#manual_complete()
" " <S-TAB>: completion back.
" inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"


" syntastics config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:indent_guides_start_level = 4 " Indentlines plugin setting
" let g:indent_guides_guide_size = 2

" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" mark trailing whitespaces
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


