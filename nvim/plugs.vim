call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'luochen1990/rainbow'
Plug 'ervandew/supertab'
Plug 'ap/vim-css-color'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'szw/vim-maximizer'
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
call plug#end()
