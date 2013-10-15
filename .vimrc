set nocompatible

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14

set encoding=utf-8

set tabstop=4
set shiftwidth=4
set backspace=2

set showcmd
set showmatch

set hidden

set mouse=a

set smartcase
set ignorecase
set incsearch
set hlsearch
set nowrapscan

set autoindent
set cindent
set smartindent

set number
set ruler

set list
set listchars=tab:>-,trail:-

set noswapfile

syntax enable
syntax on

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'taglist.vim'

Bundle 'The-NERD-tree'
autocmd vimenter * NERDTree

Bundle 'snipMate'
Bundle 'rails.vim'

Bundle 'ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Bundle 'SuperTab-continued.'
Bundle 'minibufexpl.vim'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'fancy'
:set laststatus=2
set t_Co=256

Bundle 'molokai'
colorscheme molokai

filetype indent on
filetype plugin on
filetype plugin indent on
