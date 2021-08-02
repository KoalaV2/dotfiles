source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim

colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:rainbow_active = 1
let g:coc_global_extensions = ['coc-explorer','coc-discord-rpc','coc-pyright','coc-prettier','coc-json']
let g:SuperTabDefaultCompletionType = "<c-n>"

autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on

" Don't run indentLine on json and text files
au BufReadPost,BufNewFile *.txt,*.json let g:indentLine_enabled = 0


" Continue where last exited in file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"   -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
"   highlight = {
"     enable = true              -- false will disable the whole extension
"    -- disable = { "c", "rust" },  -- list of language that will be disabled
"   },
" }
" EOF
