" plugins begin

call plug#begin('~/.local/share/nvim/plugged')


Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'tmhedberg/simpylfold'

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

" Autocompletion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'

Plug 'davidhalter/jedi-vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Formater
Plug 'Chiel92/vim-autoformat'

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
