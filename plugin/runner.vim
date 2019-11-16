" sh-cmd-runner - Run a shell command under cursor, and display its result
" Version: 0.0.1
" Author: egawata
" License: Vim license

if exists('g:loaded_sh_cmd_runner')
  finish
endif
let g:loaded_sh_cmd_runner = 1

let s:save_cpo = &cpo
set cpo&vim

let s:runCmdKey = get(g:, 'sh_cmd_runner_run_cmd_key', '<S-r>')
execute 'vnoremap ' . s:runCmdKey . ' y:silent call runner#RunCmdUnderCursor()<CR>'

let &cpo = s:save_cpo
unlet s:save_cpo
