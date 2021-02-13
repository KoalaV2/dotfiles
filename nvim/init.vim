set number
set autoindent
set showcmd
set relativenumber
colorscheme gruvbox
let mapleader = ","
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'ervandew/supertab'
Plug 'oblitum/rainbow'
call plug#end()
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:rainbow_active = 1
filetype plugin on
set undofile
map <C-a> :NERDTreeToggle<CR>
map <C-s> :w<CR>

