" Author: Olivier Crameri, 2011. 

" If session.vim exists, restore it on
" entering vim
function! RestoreSession()
    let g:saveSession=0
    if argc() == 0 "vim called without arguments
        if filereadable('session.vim')
            let g:saveSession=1
            execute 'source session.vim'
        end
    end
endfunction
autocmd VimEnter * call RestoreSession()

" If session.vim exists, saves the current
" session in it before exiting
function! SaveSession()
    if g:saveSession == 1
        if filereadable('session.vim')
            if filewritable('session.vim')
                :mksession! session.vim
            end
        end
    end
endfunction
autocmd VimLeave * call SaveSession()
