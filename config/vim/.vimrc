" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
for file in split(globpath('~/.vim', '*.vimrc'), '\n')
    execute 'source' fnameescape(file)
endfor
call vundle#end()

" Generic
filetype on
filetype plugin indent on
filetype plugin on
function! ChangeBackground()
    let &background=(&background=='dark'?'light':'dark')
    redraw
    echo 'background' &background
    hi nontext ctermfg=black guifg=bg
endfunction
function! StepColorScheme(count)
    if !exists('g:colorschemes')
        let g:colorschemes=split(globpath(&rtp,'colors/*.vim'),'\n')
    endif
    if exists('g:colorscheme')
        let g:colorscheme=(g:colorscheme+a:count)%len(g:colorschemes)
    else
        let g:colorscheme=0
    endif
    silent exe 'so ' . g:colorschemes[g:colorscheme]
    redraw
    echo 'colorscheme' split(split(g:colorschemes[g:colorscheme],'/')[-1],'.vim')[0]
    hi nontext ctermfg=black guifg=bg
endfunction
highlight BadWhitespace ctermbg=red guibg=red
if has('gui_running')
    set background=light
else
    set background=dark
endif
map <C-w><PageUp> :tabprevious<CR>
map <C-w><PageDown> :tabnext<CR>
map <C-b><PageUp> :bprevious<CR>
map <C-b><PageDown> :bnext<CR>
map <C-Left> <C-W><C-H>
map <C-Right> <C-W><C-L>
map <C-Down> <C-W><C-J>
map <C-Up> <C-W><C-K>
map <F2> :call ChangeBackground()<CR>
map <F3> :call StepColorScheme(-1)<CR>
map <F4> :call StepColorScheme(1)<CR>
set autochdir
set autoindent
set backspace=indent,eol,start
set clipboard+=unnamed
set cursorline
set encoding=utf-8
set expandtab
set fileformat=unix
set fillchars+=vert:\ 
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchtime=1
set nojoinspaces
set nowrap
set number
set paste
set ruler
set scrolloff=3
set selection=exclusive
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set softtabstop=4
set tabstop=4
set tags=./tags,tags
set tags+=tags;/
set t_Co=256
set t_ut=
set whichwrap+=<,>,[,]
set wildmenu
set wrapscan
syntax enable
syntax on
