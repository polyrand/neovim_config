" plugins begin

call plug#begin('~/.local/share/nvim/plugged')





Plug 'tpope/vim-surround'
" Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'bling/vim-airline'
Plug 'tmhedberg/simpylfold'
" PEP8 pyflakes
Plug 'nvie/vim-flake8' 
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Townk/vim-autoclose'
Plug 'davidhalter/jedi-vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
" Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'w0rp/ale'
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins', 'for': 'python'}


call plug#end()

" plugins end

