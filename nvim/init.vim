source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
let g:copilot_node_command = '/home/theo/.nvm/versions/node/v17.9.0/bin/node'
let g:rainbow_active = 1
let g:indent_blankline_show_first_indent_level = v:false
let g:copilot_no_tab_map = v:true
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on

" Continue where last exited in file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Set scrolloff to 25% of the window height.
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/4
augroup END

" Preserving equal sized split view.
autocmd VimResized * wincmd =

lua <<EOF
require('lsp')
require('Comment').setup()
require('gitsigns').setup{
    keymaps = {} -- Disable keymaps made by gitsigns.
}
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
require('nvim-autopairs').setup{}
require('luatab').setup{}
require'lualine'.setup {
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
    section_separators = ' ',
    component_separators = '|'
  },
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true, -- enable additional highlighting based on vim regexp engine ( Also fixing a odd spellcheck issue. )
  },
}
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
    use 'alvarosevilla95/luatab.nvim'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use { 'neovim/nvim-lspconfig',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer','hrsh7th/cmp-path','hrsh7th/cmp-cmdline','hrsh7th/nvim-cmp'}
    }
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
end)
EOF
