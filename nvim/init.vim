"""
" Make sure to install [vim-plug](https://github.com/junegunn/vim-plug)
" Make sure to install: ripgrep
"""
syntax on

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'justinmk/vim-sneak'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-fugitive'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
call plug#end()

colorscheme gruvbox

set completeopt=menuone,noinsert,noselect
set expandtab
set incsearch
set nohlsearch
set noswapfile
set nowrap
set number
set relativenumber
set scrolloff=8
set shiftwidth=2
set smartindent
set tabstop=2 softtabstop=2
set termguicolors
set undodir=~/.vim/undodir
set undofile
set updatetime=50

set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:sneak#label = 1

let mapleader=" "

" Remap keys
nnoremap <leader>u :UndotreeShow<CR> <space>h
"" Window navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
"" Window split - open file tree
nmap <space>e :CocCommand explorer<CR>
"" Search
nnoremap <C-f> :Files ~<CR>
nnoremap <C-n> :GFiles<CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
