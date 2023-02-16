return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'gruvbox-community/gruvbox'
    use 'luochen1990/rainbow'
    use { 'ibhagwan/fzf-lua',
      -- optional for icon support
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use 'ap/vim-css-color'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'numToStr/Comment.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'szw/vim-maximizer'
    use 'github/copilot.vim'
    use 'windwp/nvim-autopairs'
    use { 'prettier/vim-prettier', run = 'yarn install' }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'nvim-lualine/lualine.nvim'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use { 'neovim/nvim-lspconfig',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer','hrsh7th/cmp-path','hrsh7th/cmp-cmdline','hrsh7th/nvim-cmp'}
    }
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'andweeb/presence.nvim'
    use 'akinsho/bufferline.nvim'
end)
