" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

augroup vimrc
    autocmd!
    autocmd BufWritePre ~/.ssh/* setlocal noundofile
    autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

au BufRead,BufNewFile *.md setlocal textwidth=100

" save folds between sessions
" https://stackoverflow.com/a/54739345
augroup remember_folds
  autocmd!
  au BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview 1
  " au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END

" black on save python file
autocmd BufWritePre *.py execute ':Black'

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
