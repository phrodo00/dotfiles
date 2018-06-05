"https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'editorconfig/editorconfig-vim'

Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
Plug 'dhruvasagar/vim-table-mode'
call plug#end()

set ts=4
set sw=4
set sts=4
set autoindent
set expandtab
set smarttab
set smartcase
set incsearch
set hidden

colorschem molokai
set laststatus=2
set relativenumber
set number
set gcr=a:blinkon0
set scrolloff=3
set mouse=a
let g:airline_powerline_fonts = 1

let mapleader=','
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>e :CtrlP<CR>
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>y "+y

