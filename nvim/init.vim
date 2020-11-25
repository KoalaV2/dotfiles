set number
set autoindent
set showcmd
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
call plug#end()
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
filetype plugin on
map <C-a> :NERDTreeToggle<CR>
map <C-s> :w<CR>
