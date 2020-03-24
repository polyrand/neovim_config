" plugins begin

call plug#begin('~/.local/share/nvim/plugged')


Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'tmhedberg/simpylfold'
Plug 'junegunn/vim-easy-align'

" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'  " comment-out by gc

Plug 'sheerun/vim-polyglot'
Plug 'Townk/vim-autoclose'
Plug 'davidhalter/jedi-vim'

Plug 'Yggdroot/indentLine'

" " snippets
" Plug 'SirVer/ultisnips'
" Plug 'ncm2/ncm2-ultisnips'
" Plug 'honza/vim-snippets'


" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-jedi'

Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Formater
Plug 'Chiel92/vim-autoformat'

" markdown
" tabular plugin is used to format tables
" Plug 'godlygeek/tabular'
" " JSON front matter highlight plugin
" Plug 'elzr/vim-json'


" REPL
" Plug 'Vigemus/iron.nvim'


" Plug 'wsdjeg/FlyGrep.vim' " grep with <leader>s
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'ncm2/ncm2-tmux'
" Plug 'zchee/deoplete-jedi', { 'for': 'python' }
" PEP8 pyflakes
" Plug 'nvie/vim-flake8'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins', 'for': 'python'}
" Plug 'Shougo/denite.nvim'

call plug#end()

" plugins end
