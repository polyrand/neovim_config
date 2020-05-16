" plugins begin

call plug#begin('~/.local/share/nvim/plugged')


Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-easy-align'

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'  " comment-out by gc

Plug 'sheerun/vim-polyglot'

Plug 'Yggdroot/indentLine'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" py
Plug 'vim-python/python-syntax'
Plug 'ambv/black', { 'for': 'python' }
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'python' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()

" plugins end
