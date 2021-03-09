syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set noswapfile
set nowrap
set smartcase
set incsearch
set hlsearch
set laststatus=2
set noshowmode
set showmatch
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'sainnhe/sonokai'
    Plug 'sheerun/vim-polyglot'
call plug#end()
noremap ; :

colorscheme sonokai
