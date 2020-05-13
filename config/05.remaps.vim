

" use , as leader key
let mapleader=","
noremap \ ,


" move between splits with ctrl+ h j k l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" remappings
nnoremap <C-s> :w<CR>

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>p :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>o :bprevious<CR>

" Alig remaps
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" FZF remaps
nnoremap <C-p> :FZF<CR>
nnoremap <leader>b :call Fzf_dev()<CR>
" fzf files with , t
nnoremap <leader>t :Files<CR>
" rg code with , f
nnoremap <leader>f :Rg<CR>

" usw w!! to write a 'Read-Only' file if you forget to open with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!


" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" " Files + devicons
" function! Fzf_dev()
"   let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

"   function! s:files()
"     let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
"     return s:(l:files)
"   endfunction

"   function! s:edit_file(item)
"     let l:pos = stridx(a:item, ' ')
"     let l:file_path = a:item[pos+1:-1]
"     execute 'silent e' l:file_path
"   endfunction

"   call fzf#run({
"         \ 'source': <sid>files(),
"         \ 'sink':   function('s:edit_file'),
"         \ 'options': '-m ' . l:fzf_files_options,
"         \ 'down':    '40%' })
" endfunction
