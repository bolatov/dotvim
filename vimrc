" run pathogen
" we need filetype to be off for this part of the file, so it is first
filetype off
call pathogen#infect()

" highlight the current line and column
set cursorline
set cursorcolumn

" show coords of cursor in the status bar
set ruler
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin on
filetype plugin indent on    " enable loading indent file for filetype

" can exit insert mode without leaving the 'home row' of the keyboard
imap jk <Esc>
" make the spacebar good for something
map <space> :

" really handy when working with splits
nnoremap <C-W>o :call MaximizeToggle()<CR>
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

" make it apparent which of several splits is the active one
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cursorline
    autocmd WinLeave * set nocursorline
augroup END

" mapping to run flake8 against current buffer
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
