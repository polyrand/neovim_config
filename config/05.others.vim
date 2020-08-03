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

" go: https://github.com/mrnugget/vimconfig/blob/master/vimrc
" autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
let g:go_term_height = 10

" https://github.com/luochen1990/rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


augroup ft_golang
  au!
  au BufEnter,BufNewFile,BufRead *.go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4 nolist
  au BufEnter,BufNewFile,BufRead *.go setlocal completeopt-=preview
  " Enable automatic continuation of comment inserting
  au BufEnter,BufNewFile,BufRead *.go setlocal formatoptions+=ro
  au BufEnter,BufNewFile,BufRead *.tmpl setlocal filetype=html

  au Filetype go nmap <c-]> <Plug>(go-def)
  au Filetype go nmap <leader>goi <Plug>(go-info)
  au Filetype go nmap <leader>god :GoDeclsDir<CR>
  au Filetype go nmap <leader>gou <Plug>(go-run)
  au Filetype go nmap <leader>gor <Plug>(go-rename)
  au Filetype go nmap <leader>got :GoTest!<CR>
  au Filetype go nmap <leader>rt :GoTestFunc!<CR>
  au Filetype go nmap <leader>gom :GoImports<CR>
  au Filetype go nmap <leader>gie <Plug>(go-iferr)

  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

" https://ctoomey.com/writing/using-vims-arglist-as-a-todo-list/
function! s:ThankYouNext() abort
  update
  argdelete %
  bdelete
  if !empty(argv())
    argument
  endif
endfunction

command! Tyn call <sid>ThankYouNext()
nnoremap <leader>ll call <sid>ThankYouNext()

