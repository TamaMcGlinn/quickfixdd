" When using `dd` in the quickfix list, remove the item from the quickfix list.
function! quickfixdd#RemoveQFItem() abort
  let l:qf_list = getqflist()

  if len(l:qf_list) > 0
    let l:curqfidx = line('.') - 1
    call remove(l:qf_list, l:curqfidx)
    call setqflist(l:qf_list, 'r')
  endif

  if len(l:qf_list) > 0
    execute l:curqfidx + 1 . 'cfirst'
    copen
  else
    cclose
  endif
endfunction
