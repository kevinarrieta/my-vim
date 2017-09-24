set nocompatible "ensures vim over vi
set number
syntax enable
set noerrorbells visualbell t_vb= "turn off annoying bells
set hlsearch
set incsearch
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set wildmenu
set autoindent
" For MacVim
if has('gui_running')
  syntax on
  color dracula
endif
" Remove trailling whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e
call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'kien/ctrlp.vim'
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
    Plug 'mattn/emmet-vim'
call plug#end()
let mapleader = ","
noremap <c-n> :NERDTreeToggle<cr>
nnoremap <leader><leader> :NERDTreeToggle<cr>
nnoremap <leader>a ggVG
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>wq :wq<cr>:source $MYVIMRC<cr>
