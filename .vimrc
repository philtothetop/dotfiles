"Vundle required
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator' 

call vundle#end()
filetype plugin indent on

"autoread when file changed from outside
set autoread

"show current position
set ruler
set number

set showmatch

syntax enable

"standard file type
set ffs=unix,dos,mac

"tabs are 4 spaces
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"///////////////////////////////
" MAPPINGS
"////////////////////////////////
"leader
let mapleader = " "

map <leader>fs :w
map <leader>v viw

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"NerdTree
map <leader>ft :NERDTreeToggle<CR>

