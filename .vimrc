syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set incsearch
set nohlsearch
set laststatus=2
set noshowmode
set showmatch
set nocompatible
set hidden
set noswapfile
set nobackup
set termguicolors
set scrolloff=8

set cmdheight=2
set colorcolumn=80
set signcolumn=yes

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'gruvbox-community/gruvbox'
call plug#end()
set background=dark
colorscheme gruvbox
