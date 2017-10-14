"vim-plug required
set nocompatible

" for mac call plug#begin('~/.vim/bundle')

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'} 
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
"Plug 'powerline/powerline'
call plug#end()

" vim-plug automatically activates both lines:
" filetype plugin indent on
" syntax enable

set encoding=utf-8

"autoread when file changed from outside
set autoread

"show current position
set ruler
set number

set showmatch


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
" SYNTASTIC
"///////////////////////////////

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

