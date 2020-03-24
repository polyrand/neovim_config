
" let g:ale_python_flake8_executable = '/Users/r/.virtualenvs/nvim/bin/flake8'
" let g:ale_python_flake8_options = ''
" let g:ale_python_flake8_use_global = 0
" let g:ale_python_pycodestyle_executable = '/Users/r/.virtualenvs/nvim/bin/pycodestyle'
" let g:ale_python_pydocstyle_executable = '/Users/r/.virtualenvs/nvim/bin/pydocstyle'
" let g:ale_python_mypy_executable = '/Users/r/.virtualenvs/nvim/bin/mypy'
" let g:ale_python_mypy_ignore_invalid_syntax = 0
" let g:ale_python_mypy_options = ''
" let g:ale_python_mypy_use_global = 0
" let g:ale_python_pylint_executable = 'pylint'
" let g:ale_python_pylint_options = ''
" let g:ale_python_pylint_use_global = 0

" let g:ale_python_autopep8_executable = '/Users/r/.virtualenvs/nvim/bin/autopep8'


" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8', 'mypy', 'pylint', 'pycodestyle', 'pydocstyle']}


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black']
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
