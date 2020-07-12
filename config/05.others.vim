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

" The function VCenterCursor() toggles between automatically centering your cursor and setting scrolloff to the last value that you manually set. If you manually set a new scrolloff value, the OptionSet autocmd detects this and stops the other autocmds from setting scrolloff until you call the function again with <leader>zz.
" set scrolloff=<any startup value you like>
" if !exists('*VCenterCursor')
"   augroup VCenterCursor
"   au!
"   au OptionSet *,*.*
"     \ if and( expand("<amatch>")=='scrolloff' ,
"     \         exists('#VCenterCursor#WinEnter,WinNew,VimResized') )|
"     \   au! VCenterCursor WinEnter,WinNew,VimResized|
"     \ endif
"   augroup END
"   function VCenterCursor()
"     if !exists('#VCenterCursor#WinEnter,WinNew,VimResized')
"       let s:default_scrolloff=&scrolloff
"       let &scrolloff=winheight(win_getid())/2
"       au VCenterCursor WinEnter,WinNew,VimResized *,*.*
"         \ let &scrolloff=winheight(win_getid())/2
"     else
"       au! VCenterCursor WinEnter,WinNew,VimResized
"       let &scrolloff=s:default_scrolloff
"     endif
"   endfunction
" endif

" nnoremap <leader>zz :call VCenterCursor()<CR>

" save folds between sessions
" https://stackoverflow.com/a/54739345
augroup remember_folds
  autocmd!
  au BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview 1
  " au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END

set viewoptions-=curdir

" black on save python file
autocmd BufWritePre *.py execute ':Black'

" autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
