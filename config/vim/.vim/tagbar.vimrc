Plugin 'majutsushi/tagbar'
    autocmd FileType tagbar map <buffer> <C-b><PageUp> <nop>
    autocmd FileType tagbar map <buffer> <C-b><PageDown> <nop>
    let g:tagbar_compact=1
    map <F8> :TagbarToggle<CR>
