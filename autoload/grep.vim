function! grep#Run(count, query)
  let query = a:query
  let count = a:count

  if count > 0
    let query = util#GetMotion('gv')
  elseif query == ''
    let query = expand('<cword>')
  endif

  exe 'grep ' .. shellescape(query)
endfunction
