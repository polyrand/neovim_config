" set iskeyword+=-           treat dash separated words as a word text object"
" set formatoptions-=cro         Stop newline continution of comments

" if !exists('g:vscode')

" General
syntax enable 
set number relativenumber
set incsearch
set ignorecase
set smartcase
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
set lazyredraw
set guifont=JetBrains_Mono:h13

" free cursor
" set virtualedit=all
" undo
set undofile
set undodir=~/.nvim/undo

" nmap <S-Enter> o<Esc>
let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=manual
" set foldmethod=indent
" set foldcolumn=2
" set foldlevel=4
" set foldlevel=99
" set foldmarker={{{,}}}
" Enable folding with the spacebar
" nnoremap <space> za


" set 7 lines to the cursor when moving
set so=5

set cmdheight=1

set hid
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256 

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" lineabreak; 200 chars 
set lbr
set tw=200

set ai " autoindent
set si " smart indent
" set wrap " wrap lines
set nowrap " Display long lines as just one line
set clipboard+=unnamedplus

" solarized
set background=dark
colorscheme solarized

" is this even needed?
" set rtp+=/usr/local/opt/fzf

set mouse=a
set conceallevel=0  " So that I can see `` in markdown files
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" You can't stop me
cmap w!! w !sudo tee %

" endif
