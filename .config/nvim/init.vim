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
Plug 'othree/yajs.vim'
Plug 'christoomey/vim-tmux-navigator'
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
set ttimeoutlen=5

set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:sneak#label = 1
let g:tmux_navigator_no_mappings = 1

let mapleader=" "

" Remap keys
nnoremap <leader>u :UndotreeShow<CR> <space>h
imap jj <Esc>
"" Window navigation
nnoremap <silent><c-h> :wincmd h<CR>
nnoremap <silent><c-j> :wincmd j<CR>
nnoremap <silent><c-k> :wincmd k<CR>
nnoremap <silent><c-l> :wincmd l<CR>
"" Tmux pane navigation
nnoremap <silent><c-h> :TmuxNavigateLeft<CR>
nnoremap <silent><c-j> :TmuxNavigateDown<CR>
nnoremap <silent><c-k> :TmuxNavigateUp<CR>
nnoremap <silent><c-l> :TmuxNavigateRight<CR>
"" Window split - open file tree
nmap <space>e :CocCommand explorer<CR>
"" Search
nnoremap <C-f> :Files ~<CR>
nnoremap <C-n> :GFiles<CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
