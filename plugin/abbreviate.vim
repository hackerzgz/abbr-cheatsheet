" Abbreviate Cheat Sheet - quickly search for abbreviations
" Maintainer: hackerzgz<https://github.com/hackerzgz>
" Version: v0.0.1

function! s:load() abort
    call fzf#run({'source': 'cat dictionary.txt', 'sink': 'e'})
endfunction

command! -nargs=0 Abbr call s:load()