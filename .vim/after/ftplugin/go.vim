" filetype=go

noremap <silent> <buffer> ]] <Cmd>call <SID>GoFindSection('next_start', v:count1)<CR>
noremap <silent> <buffer> ][ <Cmd>call <SID>GoFindSection('next_end', v:count1)<CR>
noremap <silent> <buffer> [[ <Cmd>call <SID>GoFindSection('prev_start', v:count1)<CR>
noremap <silent> <buffer> [] <Cmd>call <SID>GoFindSection('prev_end', v:count1)<CR>

function! <SID>GoFindSection(dir, count)
    mark '
    let c = a:count
    while c > 0
        if a:dir == 'next_start'
            keepjumps call search('^\(type\|func\)\>', 'W')
        elseif a:dir == 'next_end'
            keepjumps call search('^}', 'W')
        elseif a:dir == 'prev_start'
            keepjumps call search('^\(type\|func\)\>', 'bW')
        elseif a:dir == 'prev_end'
            keepjumps call search('^}', 'bW')
        endif
        let c -= 1
    endwhile
endfunction
