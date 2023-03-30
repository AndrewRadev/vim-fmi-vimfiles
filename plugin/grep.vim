scriptversion 4

command! -nargs=* -range=0 Grep call grep#Run(<count>, <q-args>)
