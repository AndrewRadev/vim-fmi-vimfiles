filetype plugin on
filetype indent on
syntax on

colorscheme andrew-light

" call pathogen#infect()
" call pathogen#helptags()

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/undoquit.vim'
Plug 'AndrewRadev/andrews_nerdtree.vim'
Plug 'AndrewRadev/nerdtree'
Plug 'kana/vim-smartword'
call plug#end()

set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set display=truncate
set expandtab
set fillchars=stl:-,stlnc:-,vert:│
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ --hidden
set guioptions=
set history=1000
set incsearch
set laststatus=2
set listchars=tab:<->
set mouse=a
set nobackup
set nolist
set noswapfile
set notimeout
set nowritebackup
set nrformats-=octal
set number
set ruler
set scrolloff=0
set shiftwidth=2
set showcmd
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set tabstop=8
set ttimeout
set ttimeoutlen=50
set wildmenu
set wildmode=list:longest,full
set wildoptions=pum

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
