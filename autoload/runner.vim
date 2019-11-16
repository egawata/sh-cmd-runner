" sh-cmd-runner - Run a shell command under cursor, and display its result
" Version: 0.0.1
" Author: egawata
" License: Vim license

let s:save_cpo = &cpo
set cpo&vim

function! runner#RunCmdUnderCursor()
  let l:cmdPrefix = get(g:, 'sh_cmd_runner_cmd_prefix', '')
  let l:resultSeparator = get(g:, 'sh_cmd_runner_result_separator', '')
  let comm = trim(@*)
  exec 'new'
  call append(0, l:cmdPrefix . comm)
  call append(1, '')
  if l:resultSeparator != ''
    call append(2, l:resultSeparator)
  endif
  normal! dd
  exec ":r!" . comm
  if l:resultSeparator != ''
    call append(line('$'), l:resultSeparator)
  endif
  call cursor(1, 1)
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
