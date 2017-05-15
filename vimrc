" XXX: both setting are required (tabstop defaults to 8 otherwise, and the
" crash doesn't happen... spooky)
set virtualedit=all
set tabstop=4

function! ExecMove(cmd) abort
  normal! m`
  silent! exe a:cmd
  norm! ``
endfunction

function! Move(count) abort
  call ExecMove('move+'.a:count)
endfunction

function! MoveSelectionDown(count) abort
  call ExecMove("'<,'>move'>+".a:count)
endfunction

nmap ]e :<C-U>call Move(v:count1)<CR>
xmap ]e :<C-U>call MoveSelectionDown(v:count1)<CR>
