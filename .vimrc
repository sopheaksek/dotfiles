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
set scrolloff=8

set cmdheight=2
set colorcolumn=80
set signcolumn=yes

call plug#begin('~/.vim/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'gruvbox-community/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'dyng/ctrlsf.vim'
call plug#end()

" keymaps
let g:mapleader="\<Space>"

nmap <C-s> :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" nerd tree
nmap <C-p> :NERDTreeToggle<CR>

" ctrlsf
nmap <C-F> <Plug>CtrlSFCwordPath -W<CR>

set background=dark
colorscheme gruvbox
