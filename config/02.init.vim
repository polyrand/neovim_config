" General
syntax enable 
set number
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


set guifont=JetBrains_Mono:h13

" free cursor
" set virtualedit=all

" undo
set undofile
set undodir=~/.nvim/undo

augroup vimrc
    autocmd!
    autocmd BufWritePre ~/.ssh/* setlocal noundofile
    autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

au BufRead,BufNewFile *.md setlocal textwidth=100

" nmap <S-Enter> o<Esc>

let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=manual
" set foldlevel=99
" set foldmarker={{{,}}}
" Enable folding with the spacebar
" nnoremap <space> za
" save folds between sessions
" https://stackoverflow.com/a/54739345
augroup remember_folds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END


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

" lineabreak; 200 chars 
set lbr
set tw=200

set ai " autoindent
set si " smart indent
" set wrap " wrap lines


set clipboard+=unnamedplus


" solarized
set background=dark
colorscheme solarized

" is this even needed?
set rtp+=/usr/local/opt/fzf

set mouse=a

let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
