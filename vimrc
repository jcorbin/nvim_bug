" XXX: both setting are required (tabstop defaults to 8 otherwise, and the
" crash doesn't happen... spooky)
set virtualedit=all
set tabstop=4

function! s:ExecMove(cmd) abort
  normal! m`
  silent! exe a:cmd
  norm! ``
endfunction

function! s:Move(cmd, count, map) abort
  call s:ExecMove('move'.a:cmd.a:count)
endfunction

function! s:MoveSelectionDown(count) abort
  call s:ExecMove("'<,'>move'>+".a:count)
endfunction

nmap ]e :<C-U>call <SID>Move('+',v:count1,'Down')<CR>
xmap ]e :<C-U>call <SID>MoveSelectionDown(v:count1)<CR>
