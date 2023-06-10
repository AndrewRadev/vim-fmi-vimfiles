function! visual_star#Run() range
  " Debug:
  " echomsg "First line: " .. string(a:firstline)
  " trim
  " echomsg "Last line:  " .. string(a:lastline)

  let text = trim(util#GetMotion('gv'))
  let pattern = '\V' .. escape(text, '\')

  call search(pattern)
  let @/ = pattern
endfunction
