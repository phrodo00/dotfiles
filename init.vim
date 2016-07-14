"https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
call plug#end()

colorschem molokai
set laststatus=2
set relativenumber
set number
set gcr=a:blinkon0
set scrolloff=3

set ts=4
set sw=4
set sts=4
set autoindent
set expandtab
set smarttab
set smartcase
set incsearch
set mouse=a

let mapleader=','
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>e :CtrlP<CR>

