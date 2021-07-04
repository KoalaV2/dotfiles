source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/sets.vim
colorscheme gruvbox
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:rainbow_active = 1
let g:coc_global_extensions = ['coc-explorer']
autocmd BufWritePre * :%s/\s\+$//e
filetype plugin on
au BufReadPost,BufNewFile *.txt,*.json let g:indentLine_enabled = 0
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
