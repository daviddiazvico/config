Plugin 'python-mode/python-mode'
    autocmd FileType python map <F9> :PymodeLintAuto<CR>
    let g:pymode_rope=1
    let g:pymode_doc=1
    let g:pymode_doc_key='K'
    let g:pymode_lint=1
    let g:pymode_lint_checker='pyflakes,pep8'
    let g:pymode_lint_write=1
    let g:pymode_virtualenv=1
    let g:pymode_breakpoint=1
    let g:pymode_breakpoint_bind='<leader>b'
    let g:pymode_syntax=1
    let g:pymode_syntax_all=1
    let g:pymode_syntax_indent_errors=g:pymode_syntax_all
    let g:pymode_syntax_space_errors=g:pymode_syntax_all
    let g:pymode_folding=0
