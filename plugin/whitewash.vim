function! Whitewash()
  %s/\v(\s|)*$//
  retab
  ''
endfunction

autocmd FileWritePre * :call Whitewash()
autocmd FileAppendPre * :call Whitewash()
autocmd FilterWritePre * :call Whitewash()
autocmd BufWritePre * :call Whitewash()
