let g:python_host_prog = '/Users/r/.virtualenvs/nvim/bin/python'
let g:python3_host_prog = '/Users/r/.virtualenvs/nvim/bin/python'


for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor

