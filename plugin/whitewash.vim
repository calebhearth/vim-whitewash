command! Whitewash call <sid>whitewash()

function! s:whitewash()
  %s/\v(\s|
)*$//
  retab
  ''
endfunction

autocmd FileWritePre * :Whitewash
autocmd FileAppendPre * :Whitewash
autocmd FilterWritePre * :Whitewash
autocmd BufWritePre * :Whitewash
