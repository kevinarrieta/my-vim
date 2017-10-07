set number
set noerrorbells visualbell t_vb= "turn off annoying bells
set softtabstop=2 "number of space chars a tab counts for
set shiftwidth=2 "number of space chars for indentation
set tabstop=2 "space chars inserted when tab key is pressed
set expandtab
set incsearch
set wildmenu
filetype plugin indent on
if has("gui_running")
  syntax on
  color dracula
endif

call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'Chiel92/vim-autoformat'
  Plug 'kien/ctrlp.vim'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'
  Plug 'raimondi/delimitmate'
call plug#end()

let mapleader = ","
nnoremap <leader>rc :vs $MYVIMRC<cr>
nnoremap <leader>src :wq<cr>:source $MYVIMRC<cr>
nnoremap <leader>f :Autoformat<cr>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

autocmd BufWritePre * :%s/\s\+$//e
