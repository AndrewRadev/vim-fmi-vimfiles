filetype plugin on
filetype indent on
syntax on

colorscheme andrew-light

set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set display=truncate
set expandtab
set fillchars=stl:-,stlnc:-,vert:│
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ --hidden
set guioptions=
set history=1000
set hlsearch
set incsearch
set laststatus=2
set listchars+=tab:<->
set mouse=a
set nobackup
set noignorecase
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
set statusline=%<%f\ %y%m%r%=%-14.(%l,%c%V%)\ %P
set t_Co=256
set tabstop=8
set ttimeout
set ttimeoutlen=50
set wildmenu
set wildmode=list:longest,full
set wildoptions=pum

map Q <nop>
sunmap Q

nnoremap zj mayyp`aj
nnoremap zk mayyP`ak

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

xnoremap * :call visual_star#Run()<cr>

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/undoquit.vim'
Plug 'AndrewRadev/andrews_nerdtree.vim'
Plug 'AndrewRadev/nerdtree'
Plug 'AndrewRadev/typewriter.vim'
Plug 'kana/vim-smartword'
Plug 'vim-scripts/Decho'
call plug#end()

let g:andrews_nerdtree_all = 1
let g:andrews_nerdtree_external_open_key = 'gu'

" NERDTree:
let g:NERDTreeHijackNetrw = 0
" Don't map over J and K
let g:NERDTreeMapJumpFirstChild = '-'
let g:NERDTreeMapJumpLastChild  = '-'
" Don't care about cd-ing to the cwd
let g:NERDTreeMapCWD = '-'
" The 's' key is a prefix for a lot of things
let g:NERDTreeMapOpenVSplit = 'so'
" I use 'go' for something else and don't use it in the NERDTree
let g:NERDTreeMapPreview = '-'

nnoremap gn :NERDTreeToggle<cr>
nnoremap _f :NERDTreeFind<cr>

" Smartword:
nmap w  <Plug>(smartword-w)
nmap b  <Plug>(smartword-b)
nmap e  <Plug>(smartword-e)
nmap ge <Plug>(smartword-ge)

xmap w  <Plug>(smartword-w)
xmap b  <Plug>(smartword-b)
xmap e  <Plug>(smartword-e)
xmap ge <Plug>(smartword-ge)

command! DiffOrig vert new
      \ | set bt=nofile
      \ | r ++edit #
      \ | 0d_
      \ | diffthis
      \ | wincmd p
      \ | diffthis

augroup vimStartup
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
        \ |   exe "normal! g`\""
        \ | endif

augroup END

augroup vimHints
  autocmd!
  autocmd CmdwinEnter *
        \ echohl Todo | 
        \ echo 'You discovered the command-line window! You can close it with ":q".' |
        \ echohl None
augroup END
