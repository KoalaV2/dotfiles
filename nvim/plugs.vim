call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'ervandew/supertab'
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()
