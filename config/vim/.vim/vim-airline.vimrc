Plugin 'vim-airline/vim-airline'
    let g:airline#extensions#tabline#enabled=1
    let g:airline_powerline_fonts=1
Plugin 'vim-airline/vim-airline-themes'
    function! StepAirlineTheme(count)
        if !exists('g:airlinethemes')
            let g:airlinethemes=['dark']+split(globpath('~','.vim/bundle/vim-airline-themes/autoload/airline/themes/*.vim'),'\n')
        endif
        if exists('g:airlinetheme')
            let g:airlinetheme=(g:airlinetheme+a:count)%len(g:airlinethemes)
        else
            let g:airlinetheme=0
        endif
        silent exe 'AirlineTheme ' split(split(g:airlinethemes[g:airlinetheme],'/')[-1],'.vim')[0]
        redraw
        echo 'airline theme' split(split(g:airlinethemes[g:airlinetheme],'/')[-1],'.vim')[0]   
        hi nontext ctermfg=black guifg=bg
    endfunction
    map <F5> :call StepAirlineTheme(-1)<CR>
    map <F6> :call StepAirlineTheme(1)<CR>
