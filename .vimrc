set nocompatible
set shell=/bin/bash

let mapleader="\\"
" turn syntax highlighting on
set t_Co=256
syntax on

set tabstop=4           " number of visual spaces per TAB
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need too
set showmatch           " highlight matching [{()}]
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" avoid escape key
inoremap jk <Esc>

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
