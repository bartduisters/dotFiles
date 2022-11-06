let mapleader=" "

""""""""""""""""
" File Browser "
""""""""""""""""
" Have a tree of directories
let g:netrw_liststyle=3

" Option + b: ∫
noremap <silent> ∫ :call ToggleSideBar()<CR>
noremap <silent> <Leader>b :call ToggleSideBar()<CR>
noremap cp :let @* = expand("%:p:h")<cr>

"""""""""""""
" Functions "
"""""""""""""
function! ToggleSideBar()
      Lexplore
      vertical resize 25
endfunction
