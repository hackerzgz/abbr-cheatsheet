"Abbreviate Cheat Sheet - quickly search for abbreviations
" Maintainer: hackerzgz<https://github.com/hackerzgz>
" Version: v0.0.1

function! s:insert(pair) abort
    let kv = split(a:pair, ",")
    execute "normal! a". kv[1] . "\<Esc>"
endfunction

function! s:load() abort
    call fzf#run(fzf#wrap({'source': 'cat ~/.vim/plugged/abbr-cheatsheet/plugin/dictionary.txt', 'sink': function('s:insert')}))
endfunction


command! -nargs=? Abbr call s:load()
