" XXX: both setting are required (tabstop defaults to 8 otherwise, and the
" crash doesn't happen... spooky)
set virtualedit=all
set tabstop=4

" NOTE: the mark setting below turns out to be required: I tried removing it
" and performing adjusted edits (i.e. moving back up a line after the 2-line
" MoveSelectionDown), but the crash did not provoke.

function! Move(count) abort
  normal! m`
  silent! exe 'move+'.a:count
  norm! ``
endfunction

function! MoveSelectionDown(count) abort
  normal! m`
  silent! exe "'<,'>move'>+".a:count
  norm! ``
endfunction

nmap ]e :<C-U>call Move(v:count1)<CR>
xmap ]e :<C-U>call MoveSelectionDown(v:count1)<CR>
