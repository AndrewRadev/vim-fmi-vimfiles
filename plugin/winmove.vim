nnoremap <c-w>d :call winmove#Delete()<cr>
nnoremap <c-w>y :call winmove#Yank()<cr>

nnoremap <silent> <c-w>p :call winmove#Paste('rightbelow')<cr>
nnoremap <silent> <c-w>P :call winmove#Paste('leftabove')<cr>
