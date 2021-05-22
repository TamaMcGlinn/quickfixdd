command! RemoveQFItem :call quickfixdd#RemoveQFItem()

augroup quickfixdd
  " Use map <buffer> to only map dd in the quickfix window. Requires +localmap
  autocmd FileType qf map <silent> <buffer> dd :RemoveQFItem<cr>
augroup end
