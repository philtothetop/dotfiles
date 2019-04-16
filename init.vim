"vim-plug required
set nocompatible
" for mac call plug#begin('~/.vim/bundle')

let g:plug_timeout = 600

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python'}
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" put this at top or redefines will be erased
colorscheme nord

" vim-plug automatically activates both lines:
" filetype plugin indent on
" syntax enable

set encoding=utf-8

"autoread when file changed from outside
set autoread

"show current position
set ruler
set relativenumber

set showmatch


"standard file type
set ffs=unix,dos,mac

"tabs are 4 spaces
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

hi Visual ctermbg=152 ctermfg=0
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

"python checker
let g:syntastic_python_checkers = ['flake8']

"///////////////////////////////
" AIRLINE
"///////////////////////////////
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

"///////////////////////////////
" MAPPINGS
"////////////////////////////////
"leader
let mapleader = " "
nnoremap <Space> <NOP>
map <leader>fs :w<ENTER>
map <leader>v viw
map ,y :call yapf#YAPF()<cr>

"splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"NerdTree
map <leader>ft :NERDTreeToggle<CR>

