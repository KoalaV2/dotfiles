call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'ervandew/supertab'
Plug 'ap/vim-css-color'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'honza/vim-snippets'
Plug 'szw/vim-maximizer', { 'on': 'MaximizerToggle'}
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'dstein64/vim-startuptime', {'on': 'StartupTime'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'alvarosevilla95/luatab.nvim'
Plug 'kyazdani42/nvim-web-devicons' " For colored icons
" Plug 'ryanoasis/vim-devicons'
call plug#end()
