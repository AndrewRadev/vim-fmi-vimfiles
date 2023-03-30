filetype plugin on
filetype indent on
syntax on

colorscheme andrew-light

" /home/vim-course/.vim
" /usr/local/share/vim/vimfiles
" /usr/local/share/vim/vim90/autoload/
" /usr/local/share/vim/vimfiles/after
" /home/vim-course/.vim/after

call pathogen#infect()
call pathogen#helptags()

set wildmenu
set wildmode=list:longest,full
set laststatus=2
set wildoptions=pum
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=8

set backspace=indent,eol,start
set history=1000
set ruler
set showcmd

set nolist
set listchars=tab:<->

set notimeout
set ttimeout
set ttimeoutlen=50
set display=truncate
set scrolloff=0
set incsearch
set nrformats-=octal
set guioptions=

set mouse=a

set number
set splitbelow
set splitright
set clipboard=unnamed,unnamedplus

set fillchars=stl:-,stlnc:-,vert:│

" YOLO
set nobackup
set nowritebackup
set noswapfile

set t_Co=256
" set termguicolors

nnoremap zj mayyp`aj
nnoremap zk mayyP`ak

let g:netrw_liststyle = 3  " дървовидно
let g:netrw_banner    = 0  " без банер (`I` го показва)
let g:netrw_winsize   = 20 " по-малък прозорец
 
nnoremap gn :Lex<cr>

inoremap <c-p> <c-r>"
cnoremap <c-p> <c-r>"

nnoremap vv ^vg_
nnoremap Y y$

nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

nnoremap gj <c-w>j
nnoremap gk <c-w>k
nnoremap gl <c-w>l
nnoremap gh <c-w>h

nnoremap <silent> J 5gj
nnoremap <silent> K 5gk
xnoremap <silent> J 5gj
xnoremap <silent> K 5gk

nnoremap gm K

nnoremap ! :source %<cr>

set grepprg=rg\ --vimgrep\ --hidden
set grepformat=%f:%l:%c:%m
