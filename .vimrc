" ~/.vimrc - de4thPawn

set nocompatible
syntax on
set number
set relativenumber
set cursorline
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set scrolloff=8
set sidescrolloff=8
set wrap
set linebreak
set hidden
set nobackup
set nowritebackup
set noswapfile
set undofile
set undodir=~/.vim/undodir
set mouse=a
set clipboard=unnamedplus
set encoding=utf-8
set fileencoding=utf-8
set termguicolors
set background=dark
set laststatus=2
set wildmenu
set wildmode=longest:list,full
set splitbelow
set splitright

" statusline
set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %l:%c
set statusline+=\ [%p%%]

" keybinds
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" quick hex view
nnoremap <leader>x :%!xxd<CR>
nnoremap <leader>X :%!xxd -r<CR>
