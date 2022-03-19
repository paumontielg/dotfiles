" Author: Carlos Lezama

function MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        let s .= '%' . (i + 1) . 'T'

        let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

        if i + 1 == tabpagenr()
            let s .= '%#TabLineSep#'
        elseif i + 2 == tabpagenr()
            let s .= '%#TabLineSep2#'
        else
            let s .= ''
        endif
    endfor

    let s .= '%#TabLineFill#%T'

    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999X'
    endif

    return s
endfunction

function MyTabLabel(n)
    let buflist = tabpagebuflist(a:n)
    let winnr = tabpagewinnr(a:n)
    let name = bufname(buflist[winnr - 1])
    let label = fnamemodify(name, ':t')
    return len(label) == 0 ? '[No Name]' : label
endfunction

set tabline=%!MyTabLine()

