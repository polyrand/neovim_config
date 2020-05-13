" plugins begin

call plug#begin('~/.local/share/nvim/plugged')


Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
" Plug 'tmhedberg/simpylfold'
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

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Glench/Vim-Jinja2-Syntax'

call plug#end()

" plugins end
