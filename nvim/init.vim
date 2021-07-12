source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim
set termguicolors
colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:rainbow_active = 1
let g:coc_global_extensions = ['coc-explorer','coc-discord-rpc','coc-python','coc-prettier']
let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on
au BufReadPost,BufNewFile *.txt,*.json let g:indentLine_enabled = 0
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true              -- false will disable the whole extension
   -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
