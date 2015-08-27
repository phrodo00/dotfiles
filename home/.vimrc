"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoBundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'Shougo/vimshell.vim'
 NeoBundle 'SirVer/ultisnips'
 NeoBundle 'honza/vim-snippets'
 NeoBundle 'tomasr/molokai'
 NeoBundle 'vim-scripts/c.vim'
 NeoBundle 'hail2u/vim-css3-syntax'
 NeoBundle 'gorodinskiy/vim-coloresque'


 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set relativenumber
set shortmess=filmnrxsItToO
set colorcolumn=+1
set wildmenu
set wildmode=list:full
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set undodir=~/.vim/var/undo
set undofile

let mapleader=','
set hidden
set hlsearch
set incsearch
set bomb
set ttyfast
set nobackup
set noswapfile
set showcmd
set laststatus=2

" No blinking cursor
set gcr=a:blinkon0
set scrolloff=3

colorscheme molokai

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap jj <ESC>
map <DOWN> gj
map <UP> gk
vnoremap <C-Insert> "+y
map <S-Insert> "+gP
cmap <S-Insert> <C-R>+
nnoremap <leader>b :CtrlPBuffer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = ' '
let g:airline_right_sep = '«'
let g:airline_right_sep = ' '
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Graphical Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")
    set lines=40 columns=90
    set guioptions-=T
endif
