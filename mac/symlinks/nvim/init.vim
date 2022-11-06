let mapleader=" "

""""""""""""""""
" File Browser "
""""""""""""""""
" Have a tree of directories
let g:netrw_liststyle=3
let g:netrw_usetab=1
let g:netrw_browse_split=3

" Option + b: ∫
noremap <silent> ∫ :call ToggleSideBar()<CR>
noremap <silent> <Leader>b :call ToggleSideBar()<CR>
noremap <silent> <Leader>f :call ToggleSideBar()<CR>

""""""""""""""""
" Vim Mappings "
""""""""""""""""
noremap <silent> cp :let @* = expand("%:p:h")<cr>

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>

"""""""""""""
" Functions "
"""""""""""""
function! ToggleSideBar()
      Lexplore
      vertical resize 25
endfunction
