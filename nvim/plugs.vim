call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'luochen1990/rainbow'
Plug 'ap/vim-css-color'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'szw/vim-maximizer', { 'on': 'MaximizerToggle'}
Plug 'github/copilot.vim'
Plug 'windwp/nvim-autopairs'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'alvarosevilla95/luatab.nvim'
Plug 'kyazdani42/nvim-web-devicons' " For colored icons

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()
