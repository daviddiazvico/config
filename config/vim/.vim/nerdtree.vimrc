Plugin 'scrooloose/nerdtree'
    autocmd bufenter * if (winnr('$')==1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
    autocmd FileType nerdtree map <buffer> <C-b><PageUp> <nop>
    autocmd FileType nerdtree map <buffer> <C-b><PageDown> <nop>
    let g:NERDTreeDirArrows=1
    let g:NERDTreeIgnore=['\.pyc$', '\.o$', '\.swp$', '\~$']
    let g:NERDTreeMinimalUI=1
    let g:NERDTreeShowHidden=1
    map <F7> :NERDTreeToggle<CR>
